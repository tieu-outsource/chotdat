import 'package:chotdat/color.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:flutter/material.dart';

class SellerDetailTab extends StatelessWidget {
  const SellerDetailTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          NamedCard(
              title: 'Thông tin chủ sở hữu',
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên chủ sở hữu', 'Nguyễn Văn A'),
                    detailItem(context, 'Địa chỉ', '60 Nguyễn Văn Lộc'),
                    detailItem(context, 'Số điện thoại', '0399803834'),
                    detailItem(context, 'Ghi chú', '50%'),
                  ],
                ),
              )),
          NamedCard(
              title: 'Thông tin môi giới đầu chủ',
              titleWidth: 220,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên môi giới', 'Nguyễn Văn A'),
                    detailItem(context, 'Địa chỉ', '90 Nguyễn Văn Lộc'),
                    detailItem(context, 'Số điện thoại', '0399803834'),
                    detailItem(context, 'Ghi chú', 'Abc def'),
                  ],
                ),
              )),
          NamedCard(
              title: 'Thông tin môi giới đầu khách',
              titleWidth: 220,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên môi giới', 'Nguyễn Văn A'),
                    detailItem(context, 'Địa chỉ', '90 Nguyễn Văn Lộc'),
                    detailItem(context, 'Số điện thoại', '0399803834'),
                    detailItem(context, 'Ghi chú', '50%'),
                  ],
                ),
              )),
          NamedCard(
              title: 'Thông tin khách mua',
              titleWidth: 220,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên môi giới', 'Nguyễn Văn D'),
                    detailItem(context, 'Địa chỉ', '90 Nguyễn Văn Lộc'),
                    detailItem(context, 'Số điện thoại', '0399803834'),
                    detailItem(context, 'Ghi chú', '50%'),
                  ],
                ),
              )),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget detailItem(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 12)),
          Text(value,
              style: const TextStyle(fontSize: 12, color: Styles.primaryColor)),
        ],
      ),
    );
  }
}
