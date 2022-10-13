import 'package:chotdat/color.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:flutter/material.dart';

class SaleItemDetailTab extends StatelessWidget {
  const SaleItemDetailTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          NamedCard(
              title: 'Tiêu đề',
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: const Text(
                  'Nhà 5 tầng 50m phố Đỗ Quang',
                  style: TextStyle(fontSize: 12),
                ),
              )),
          NamedCard(
              title: 'Địa chỉ',
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(radius: 10),
                    SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context)
                          .size
                          .width - 90,
                      child: const Text(
                        'Số 1 Đỗ Quanh, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội',
                        maxLines: 5,
                        style: TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )),
          NamedCard(
              title: 'Hình ảnh',
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset('images/sample/house1.png',
                          width: MediaQuery.of(context).size.width / 5),
                    ),
                    Container(
                      child: Image.asset('images/sample/house1.png',
                          width: MediaQuery.of(context).size.width / 5),
                    ),
                    Container(
                      child: Image.asset('images/sample/house1.png',
                          width: MediaQuery.of(context).size.width / 5),
                    ),
                    Container(
                      child: Image.asset('images/sample/house1.png',
                          width: MediaQuery.of(context).size.width / 5),
                    )
                  ],
                ),
              )),
          NamedCard(
              title: 'Mô tả',
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: double.infinity,
                  child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                ),
              )),
          NamedCard(
              title: 'Giá bán',
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '9,6 tỷ',
                      style: TextStyle(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    Text(
                      '86 triệu/m2',
                      style: TextStyle(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )
                  ],
                ),
              )),
          // SizedBox(height: 300)
        ],
      ),
    );
  }
}
