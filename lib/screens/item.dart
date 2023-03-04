import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osar_pasar/controller/item_controller.dart';
import 'package:osar_pasar/models/category.dart';
import '../utils/colors.dart';

class ItemAddScreen extends StatelessWidget {
  ItemAddScreen({super.key});

  final c = Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(Get.context!).textTheme;
    var theme = Theme.of(Get.context!);
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: const Color(0xFF494949).withOpacity(0.06),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
        title: Text(
          "Item List",
          style: textTheme.titleLarge!
              .copyWith(fontSize: 16, color: AppColors.textColor),
        ),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  side: const BorderSide(
                    width: 1,
                    color: Color(0xff00183F),
                  ),
                  backgroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: c.showCategory,
                child: Text(
                  "Add Item",
                  style: textTheme.titleMedium!
                      .copyWith(fontSize: 16, color: AppColors.textColor),
                ),
              ),
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 46, right: 35, left: 35),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: const Color(0xff00183F),
            minimumSize: const Size.fromHeight(50),
          ),
          onPressed: () {},
          child: const Text(
            "Continue",
          ),
        ),
      ),
    );
  }
}

// Container(
//                                 margin: const EdgeInsets.only(top: 15),
//                                 child: DropdownButtonFormField(
//                                   icon: const Visibility(
//                                       visible: false,
//                                       child: Icon(Icons.arrow_downward)),
//                                   alignment: AlignmentDirectional.bottomCenter,
//                                   decoration: InputDecoration(
//                                       contentPadding:
//                                           const EdgeInsets.symmetric(
//                                               vertical: 5, horizontal: 10),
//                                       border: const OutlineInputBorder(
//                                         gapPadding: 1,
//                                         borderSide: BorderSide(
//                                             color: Color(0xfffD9D9D9),
//                                             width: 2),
//                                         borderRadius: BorderRadius.all(
//                                           Radius.circular(8.0),
//                                         ),
//                                       ),
//                                       suffix: const Text(""),
//                                       suffixIcon:
//                                           const Icon(Icons.keyboard_arrow_down),
//                                       filled: true,
//                                       hintStyle:
//                                           TextStyle(color: Colors.grey[800]),
//                                       hintText: "Select District",
//                                       fillColor: Colors.white),
//                                   onChanged: (pro) {
//                                     selectedDistrict = pro;
//                                     setState(() {});
//                                   },
//                                   items: (selectedProvince?.districts ?? [])
//                                       .map(
//                                         (cityTitle) => DropdownMenuItem(
//                                           value: cityTitle,
//                                           child: Text(cityTitle.name),
//                                         ),
//                                       )
//                                       .toList(),
//                                 ),
//                               ),