import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme_color.dart';

void openBottomSheet() {
  final selectLang = 0.obs;
  Get.bottomSheet(
    Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20),
              Text(
                '언어 선택',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.close,
                    color: grayColor7,
                    size: 30,
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: lang.length,
            itemBuilder: (context, index) {
              return Obx(() => GestureDetector(
                    onTap: () {
                      selectLang.value = index;
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 5),
                      decoration: BoxDecoration(color: fff),
                      child: Row(
                        children: [
                          selectLang.value == index
                              ? Icon(
                                  Icons.check,
                                  size: 20,
                                  color: primarySub,
                                )
                              : SizedBox(width: 20),
                          SizedBox(width: 20),
                          Text(
                            lang[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: selectLang.value == index
                                    ? primarySub
                                    : fontColor),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
            separatorBuilder: (BuildContext context, int index) => Divider(),
          ),
        ),
      ],
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

final lang = ['한국어', 'English', '日本語', 'Español', 'Italiano', '简体中文', '繁體中文'];
