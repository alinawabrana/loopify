import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopify/data/data.dart';
import 'package:loopify/featutres/home/controllers/product_controller.dart';
import 'package:loopify/featutres/home/models/product/product_model.dart';
import 'package:loopify/featutres/home/screens/add_product/widgets/ad_spend_button.dart';
import 'package:loopify/featutres/home/screens/add_product/widgets/ad_spend_manual_package.dart';
import 'package:loopify/featutres/home/screens/add_product/widgets/image_fetching_form_field.dart';
import 'package:loopify/utils/constants/colors.dart';
import 'package:loopify/utils/helper/helpers.dart';

import '../../../../utils/common/widgets/ad_spend/ad_spend_package.dart';
import '../../../../utils/common/widgets/ad_spend/ad_spend_switch.dart';
import '../../../../utils/common/widgets/form_field/form_field_label.dart';
import '../../../../utils/common/widgets/form_field/primary_text_form_field.dart';

class AddUpdateProductScreen extends StatefulWidget {
  const AddUpdateProductScreen({
    super.key,
    this.product,
    this.isEditable = false,
  });

  final ProductModel? product;
  final bool isEditable;

  @override
  State<AddUpdateProductScreen> createState() => _AddUpdateProductScreenState();
}

class _AddUpdateProductScreenState extends State<AddUpdateProductScreen> {
  File? image1;
  File? image2;
  File? image3;
  File? image4;
  File? image5;
  bool isAdSpendEnabled = false;
  bool isNegotiable = false;
  String? selectedAdSpend;
  int? selectedCategoryId;
  String? selectedCondition;
  String? selectedLocation;
  String? selectedMaterial;
  double? amount;
  int? days;
  int? selectedPackage;
  bool _isFormValid = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController amountController = TextEditingController();
  TextEditingController daysController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.isEditable) {
      final product = widget.product!;
      nameController.text = product.title;
      descriptionController.text = product.description;
      priceController.text = product.price.toString();
      colorController.text = product.color;
      noteController.text = product.sellerNote ?? '';
      setState(() {
        isAdSpendEnabled = product.isAdSpendEnabled;
        isNegotiable = product.isNegotiable;
        selectedCategoryId = product.categoryId;
        selectedCondition = product.condition;
        selectedLocation = product.location;
        selectedMaterial = product.material;
        image1 = File(product.imageURLs[0]);
        image2 = File(product.imageURLs[1]);
        image3 = File(product.imageURLs[2]);
        image4 = File(product.imageURLs[3]);
        image5 = File(product.imageURLs[4]);
      });
      if (isAdSpendEnabled) {
        selectedAdSpend = product.selectedAdSpend;
        if (selectedAdSpend == 'Packages') {
          amount = product.packageAmount;
          days = product.packageDays;
          switch (amount) {
            case 350:
              selectedPackage = 0;
            case 250:
              selectedPackage = 1;
            case 150:
              selectedPackage = 2;
            case 50:
              selectedPackage = 3;
            default:
              selectedPackage = null;
          }
        } else {
          amountController.text = product.packageAmount.toString();
          daysController.text = product.packageDays.toString();
        }
      }
    }
  }

  void createUpdateListing() {
    try {
      if (!_formKey.currentState!.validate()) {
        throw 'Please complete the form correctly.';
      }
      final newProduct = ProductModel(
        title: nameController.text.trim(),
        price: int.parse(priceController.text.trim()),
        isNegotiable: isNegotiable,
        imageURLs: [
          image1!.path,
          image2!.path,
          image3!.path,
          image4!.path,
          image5!.path,
        ],
        description: descriptionController.text.trim(),
        condition: selectedCondition ?? '',
        location: selectedLocation ?? '',
        material: selectedMaterial ?? '',
        color: colorController.text.trim(),
        categoryId: selectedCategoryId ?? 1,
        isAdSpendEnabled: isAdSpendEnabled,
        selectedAdSpend: selectedAdSpend,
        sellerNote: noteController.text.trim(),
        packageAmount: !isAdSpendEnabled
            ? null
            : (selectedAdSpend == 'Packages'
                  ? amount
                  : double.tryParse(amountController.text.trim())),

        packageDays: !isAdSpendEnabled
            ? null
            : (selectedAdSpend == 'Packages'
                  ? days
                  : int.tryParse(daysController.text.trim())),
      );
      widget.isEditable
          ? ProductController().updateProductById(
              widget.product!.id!,
              newProduct,
            )
          : ProductController().createProduct(newProduct);
      ScaffoldMessenger.of(context).showSnackBar(
        widget.isEditable
            ? SnackBar(content: Text('Product updated Successfully!!!'))
            : SnackBar(content: Text('Product created Successfully!!!')),
      );
      Navigator.pop(context, true);
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        widget.isEditable
            ? SnackBar(content: Text('Product updated Failed!!!'))
            : SnackBar(content: Text('Product created Failed!!!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                toolbarHeight: 36,
                title: Text('Create Listing'),
                titleTextStyle: Theme.of(context).textTheme.headlineLarge,
                iconTheme: Theme.of(context).iconTheme.copyWith(size: 24),
                titleSpacing: 12,
                leadingWidth: 36,
              ),
              SizedBox(height: 24),
              Form(
                key: _formKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 12,
                        children: [
                          FormFieldLabel(label: "Add images"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ImageFetchingFormField(
                                image: image1,
                                onTap: () async {
                                  image1 = await AHelper.imagePicker();
                                  setState(() {});
                                },
                                onCancelTap: () => setState(() {
                                  image1 = null;
                                }),
                              ),
                              ImageFetchingFormField(
                                image: image2,
                                onTap: () async {
                                  image2 = await AHelper.imagePicker();
                                  setState(() {});
                                },
                                onCancelTap: () => setState(() {
                                  image2 = null;
                                }),
                              ),
                              ImageFetchingFormField(
                                image: image3,
                                onTap: () async {
                                  image3 = await AHelper.imagePicker();
                                  setState(() {});
                                },
                                onCancelTap: () => setState(() {
                                  image3 = null;
                                }),
                              ),
                              ImageFetchingFormField(
                                image: image4,
                                onTap: () async {
                                  image4 = await AHelper.imagePicker();
                                  setState(() {});
                                },
                                onCancelTap: () => setState(() {
                                  image4 = null;
                                }),
                              ),
                              ImageFetchingFormField(
                                image: image5,
                                onTap: () async {
                                  image5 = await AHelper.imagePicker();
                                  setState(() {});
                                },
                                onCancelTap: () => setState(() {
                                  image5 = null;
                                }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 48),
                    Column(
                      spacing: 48,
                      children: [
                        AdSpendSwitch(
                          isAdSpendEnabled: isAdSpendEnabled,
                          onTap: (value) => setState(() {
                            isAdSpendEnabled = value;
                            if (isAdSpendEnabled == false) {
                              selectedAdSpend = null;
                            }
                          }),
                        ),
                        if (isAdSpendEnabled)
                          FormField(
                            validator: (value) {
                              if (selectedAdSpend == null) {
                                return "You have not selected any Ad Spend.";
                              }
                              return null;
                            },
                            builder: (FormFieldState state) {
                              return Column(
                                children: [
                                  Row(
                                    spacing: 8,
                                    children: [
                                      AdSpendButtons(
                                        onTap: () => setState(() {
                                          selectedAdSpend = 'Packages';
                                        }),
                                        adSpendLabel: 'Packages',
                                        isSelected:
                                            selectedAdSpend == 'Packages',
                                      ),
                                      AdSpendButtons(
                                        onTap: () => setState(() {
                                          selectedAdSpend = 'Manual';
                                        }),
                                        adSpendLabel: 'Manual',
                                        isSelected: selectedAdSpend == 'Manual',
                                      ),
                                    ],
                                  ),
                                  if (state.hasError)
                                    Text(
                                      'No Package Type is selected. Please select a type',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.redAccent),
                                    ),
                                ],
                              );
                            },
                          ),

                        if (selectedAdSpend == 'Packages')
                          FormField(
                            validator: (value) {
                              if (isAdSpendEnabled &&
                                  selectedAdSpend == 'Packages' &&
                                  selectedPackage == null) {
                                return 'No Package is Selected';
                              }
                              return null;
                            },
                            builder: (FormFieldState state) {
                              return Column(
                                spacing: 16,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AdSpendPackage(
                                    days: 30,
                                    price: 350,
                                    pricePerDay: 11,
                                    isSelected: selectedPackage == 0,
                                    onTap: () {
                                      setState(() {
                                        amount = 350;
                                        days = 11;
                                        selectedPackage = 0;
                                        state.didChange(selectedPackage);
                                      });
                                    },
                                  ),
                                  AdSpendPackage(
                                    days: 15,
                                    price: 250,
                                    pricePerDay: 9,
                                    isSelected: selectedPackage == 1,
                                    onTap: () {
                                      setState(() {
                                        amount = 250;
                                        days = 9;
                                        selectedPackage = 1;
                                        state.didChange(selectedPackage);
                                      });
                                    },
                                  ),
                                  AdSpendPackage(
                                    days: 7,
                                    price: 150,
                                    pricePerDay: 6,
                                    isSelected: selectedPackage == 2,
                                    onTap: () {
                                      setState(() {
                                        amount = 150;
                                        days = 6;
                                        selectedPackage = 2;
                                        state.didChange(selectedPackage);
                                      });
                                    },
                                  ),
                                  AdSpendPackage(
                                    days: 3,
                                    price: 50,
                                    pricePerDay: 1,
                                    isSelected: selectedPackage == 3,
                                    onTap: () {
                                      setState(() {
                                        amount = 50;
                                        days = 1;
                                        selectedPackage = 3;
                                        state.didChange(selectedPackage);
                                      });
                                    },
                                  ),
                                  if (state.hasError)
                                    Text(
                                      'No Package is selected. Please select a package',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.redAccent),
                                    ),
                                ],
                              );
                            },
                          ),

                        if (selectedAdSpend == 'Manual')
                          Row(
                            spacing: 8,
                            children: [
                              AdSpendManualPackage(
                                label: "Amount",
                                controller: amountController,
                              ),
                              AdSpendManualPackage(
                                label: "Days",
                                controller: daysController,
                              ),
                            ],
                          ),
                        DropdownButtonFormField(
                          validator: (value) {
                            if (value == null) {
                              return 'Category is required. Please choose category.';
                            }
                            return null;
                          },
                          items: ['Free Items', 'Bags']
                              .map(
                                (category) => DropdownMenuItem(
                                  value: category,
                                  child: Text(
                                    category,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          value: selectedCategoryId != null
                              ? categories
                                    .firstWhere(
                                      (category) =>
                                          category.id == selectedCategoryId,
                                    )
                                    .label
                              : null,
                          onChanged: (value) {
                            setState(() {
                              selectedCategoryId = categories
                                  .firstWhere(
                                    (category) => category.label == value,
                                  )
                                  .id;
                            });
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AColors.textFormFieldHintTextColor,
                          ),
                          decoration: InputDecoration(
                            label: FormFieldLabel(label: 'Choose Category'),
                          ),
                        ),

                        PrimaryTextFormField(
                          label: 'Item name',
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Item name is required';
                            }
                            return null;
                          },
                        ),
                        PrimaryTextFormField(
                          label: 'Description',
                          controller: descriptionController,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Description is required';
                            }
                            return null;
                          },
                        ),
                        Column(
                          spacing: 8,
                          children: [
                            PrimaryTextFormField(
                              label: 'Price in USD',
                              controller: priceController,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Price in USD is required';
                                }
                                final valueFormat = RegExp(r'^[0-9]+$');

                                if (!valueFormat.hasMatch(value)) {
                                  return 'Price should only contains digits.';
                                }
                                return null;
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Check the box if you are flexible to negotiate the price.',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        color:
                                            AColors.textFormFieldHintTextColor,
                                      ),
                                ),
                                SizedBox(
                                  width: 12,
                                  height: 12,
                                  child: Checkbox(
                                    value: isNegotiable,
                                    onChanged: (value) {
                                      setState(() {
                                        isNegotiable = value!;
                                      });
                                    },
                                    side: BorderSide(
                                      color: AColors.textFormFieldHintTextColor,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        DropdownButtonFormField(
                          validator: (value) {
                            if (value == null) {
                              return 'Condition is required. Please choose condition.';
                            }
                            return null;
                          },
                          items: ['Bad', 'Good', 'Excellent']
                              .map(
                                (condition) => DropdownMenuItem(
                                  value: condition,
                                  child: Text(
                                    condition,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ),
                              )
                              .toList(),

                          value: selectedCondition,
                          onChanged: (value) {
                            setState(() {
                              selectedCondition = value;
                            });
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AColors.textFormFieldHintTextColor,
                          ),
                          decoration: InputDecoration(
                            label: FormFieldLabel(label: 'Choose condition'),
                          ),
                        ),

                        DropdownButtonFormField(
                          validator: (value) {
                            if (value == null) {
                              return 'Location is required. Please choose location.';
                            }
                            return null;
                          },
                          items: ['New York', 'New Jersey']
                              .map(
                                (location) => DropdownMenuItem(
                                  value: location,
                                  child: Text(
                                    location,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          value: selectedLocation,
                          onChanged: (value) {
                            setState(() {
                              selectedLocation = value;
                            });
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AColors.textFormFieldHintTextColor,
                          ),
                          decoration: InputDecoration(
                            label: FormFieldLabel(label: 'Location'),
                          ),
                        ),

                        DropdownButtonFormField(
                          validator: (value) {
                            if (value == null) {
                              return 'Material is required. Please choose material.';
                            }
                            return null;
                          },
                          items: ['Leather', 'Cotton']
                              .map(
                                (material) => DropdownMenuItem(
                                  value: material,
                                  child: Text(
                                    material,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ),
                              )
                              .toList(),
                          value: selectedMaterial,
                          onChanged: (value) {
                            setState(() {
                              selectedMaterial = value;
                            });
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AColors.textFormFieldHintTextColor,
                          ),
                          decoration: InputDecoration(
                            label: FormFieldLabel(label: 'Choose material'),
                          ),
                        ),

                        PrimaryTextFormField(
                          label: 'Color',
                          controller: colorController,
                          onChange: (_) {
                            final isValid =
                                _formKey.currentState?.validate() ?? false;
                            setState(() {
                              _isFormValid = isValid;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Color is required';
                            } else if (value.length < 3) {
                              return 'Color must contains minimum of 3 characters.';
                            }
                            return null;
                          },
                        ),
                        PrimaryTextFormField(
                          label: 'Add Note(Optional)',
                          controller: noteController,
                          isRequired: false,
                          onChange: (_) {
                            final isValid =
                                _formKey.currentState?.validate() ?? false;
                            setState(() {
                              _isFormValid = isValid;
                            });
                          },
                        ),

                        if (!_isFormValid) SizedBox(height: 16),

                        Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: widget.isEditable
                                    ? () => createUpdateListing()
                                    : _isFormValid
                                    ? () => createUpdateListing()
                                    : null,
                                child: Text(
                                  widget.isEditable
                                      ? 'UPDATE LISTING'
                                      : 'CREATE LISTING',
                                ),
                              ),
                            ),
                            if (_isFormValid && !widget.isEditable)
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sell as Free Item',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.labelMedium,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
