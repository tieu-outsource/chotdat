import 'package:flutter/material.dart';

import '../color.dart';
import '../widgets/my_button.dart';

class ComparePricePage extends StatelessWidget {
  const ComparePricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF6F6F6),
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            children: [
              MyButton(text: 'Loại bất động sản'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Radio<int>(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: 1,
                  groupValue: 0,
                  onChanged: (int? value) {},
                ),
                const SizedBox(width: 5),
                const Text('Căn hộ chung cư')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Radio<int>(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: 1,
                  groupValue: 0,
                  onChanged: (int? value) {},
                ),
                const SizedBox(width: 5),
                const Text('Nhà liền kề')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Radio<int>(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: 1,
                  groupValue: 0,
                  onChanged: (int? value) {},
                ),
                const SizedBox(width: 5),
                const Text('Biệt thự')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Radio<int>(
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: 1,
                  groupValue: 0,
                  onChanged: (int? value) {},
                ),
                const SizedBox(width: 5),
                const Text('Shophouse')
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text('Dự án', style: Styles.headlineTwo()),
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              fillColor: Colors.white,
              filled: true,
            ),
            value: 'Chọn dự án',
            onChanged: (String? newValue) {},
            items: <String>['Chọn dự án']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text('Toà nhà', style: Styles.headlineTwo()),
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              fillColor: Colors.white,
              filled: true,
            ),
            value: 'Toà nhà',
            onChanged: (String? newValue) {},
            items: <String>['Toà nhà']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text('Tầng', style: Styles.headlineTwo()),
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              fillColor: Colors.white,
              filled: true,
            ),
            value: 'Tầng',
            onChanged: (String? newValue) {},
            items:
                <String>['Tầng'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text('Mã căn', style: Styles.headlineTwo()),
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(width: 1, color: Styles.strokeColor),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              fillColor: Colors.white,
              filled: true,
            ),
            value: 'Mã căn',
            onChanged: (String? newValue) {},
            items: <String>['Mã căn']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 30),
          MaterialButton(
            onPressed: () {},
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: Styles.primaryColor,
            textColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Text('Xác nhận'),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
