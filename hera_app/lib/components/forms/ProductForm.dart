import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:hera_app/components/extensions/string_extentions.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/form.dart';
import 'package:velocity_x/velocity_x.dart';

class FormFieldData {
  String name;
  Type fieldType;
}

class FormGenerator {}

class ProductFormController extends ResourceFormController<TProduct> {
  var maxImageWidth = 640;

  ProductFormController(TProduct user) : super(editingRecord: user, db: firestore);

  @override
  Future<void> afterResourceSave(record) async {
    await loading.showSuccess('Saved', duration: 200.milliseconds);
    Get.back<TProduct>(result: record);
  }

  @override
  onInit() {
    busy.listen((isBusy) {
      if (isBusy)
        loading.showStatus();
      else
        loading.dismiss();
    });
    super.onInit();
  }
}

class ProductForm extends StatelessWidget {
  final TProduct product;
  ProductForm({this.product});

  ProductFormController get controller => Get.put<ProductFormController>(ProductFormController(product));

  @override
  Widget build(BuildContext context) {
// user

    return Scaffold(
      appBar: AppBar(
        title: 'Edit User Profile'.headline5.makeCentered(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FormBuilder(
                key: controller.formKey,
                initialValue: controller.initialValue,
                child: ListView(
                  children: <Widget>[
                    //
                    24.heightBox,
                    'Base infos'.headline4.make(),
                    16.heightBox,
                    // FormBuilderImagePicker(
                    //   name: 'photos',
                    //   decoration: const InputDecoration(labelText: 'Pick Photos'),
                    //   maxImages: 2,
                    //   valueTransformer: (imageList) async {
                    //     print(imageList);
                    //     return imageList;
                    //   },
                    // ),
                    FormBuilderTextField(
                      name: 'title',
                      decoration: InputDecoration(
                        labelText: 'Full name',
                      ),
                    ),
                    FormBuilderTextField(
                      name: 'description',
                      minLines: 2,
                      maxLines: 4,
                      decoration: InputDecoration(
                        labelText: 'Full name',
                      ),
                    ),
                    FormBuilderTextField(
                      name: 'shopUrl',
                      decoration: InputDecoration(
                        labelText: 'Full name',
                      ),
                    ),
                    // FormBuilderDropdown(
                    //   name: 'gender',
                    //   decoration: InputDecoration(
                    //     labelText: 'Gender',
                    //   ),
                    //   items: [
                    //     DropdownMenuItem(child: 'Female'.bodyText1.make(), value: 0),
                    //     DropdownMenuItem(child: 'Male'.bodyText1.make(), value: 1),
                    //     DropdownMenuItem(child: 'Other'.bodyText1.make(), value: 2),
                    //   ],
                    // ),
                    // FormBuilderDateTimePicker(
                    //   name: 'dateOfBirth',
                    //   decoration: InputDecoration(
                    //     labelText: 'Birth date',
                    //   ),
                    //   inputType: InputType.date,
                    // ),
                    // 16.heightBox,

                    //
                    // 24.heightBox,
                    // 'Préferences'.headline4.make(),
                    // 16.heightBox,
                    // [
                    //   Expanded(
                    //     child: FormBuilderColorPickerField(
                    //       name: 'prefredColor1',
                    //       decoration: InputDecoration(
                    //         labelText: 'Prefred Color 1',
                    //       ),
                    //       colorPickerType: ColorPickerType.BlockPicker,
                    //     ),
                    //   ),
                    //   16.widthBox,
                    //   Expanded(
                    //     child: FormBuilderColorPickerField(
                    //       name: 'prefredColor2',
                    //       decoration: InputDecoration(
                    //         labelText: 'Prefred Color 2',
                    //       ),
                    //       colorPickerType: ColorPickerType.BlockPicker,
                    //     ),
                    //   )
                    // ].hStack(),
                    // FormBuilderCheckbox(
                    //   name: 'isPrivate',
                    //   decoration: InputDecoration(
                    //     labelText: 'Private Profile',
                    //   ),
                    //   title: 'Private Profile'.caption.make(),
                    //   // colorPickerType: ColorPickerType.BlockPicker,
                    // ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => controller.save(),
              child: 'SAUVEGARDER'.bodyText1.makeCentered(),
            )
          ],
        ).p8(),
      ),
    );
  }
}
