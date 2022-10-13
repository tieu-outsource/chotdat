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
                    detailItem(
                        context, 'Giá chào bán', '8 tỷ - 130.000.000 m2'),
                    detailItem(context, 'Hoa hồng bán', '2%'),
                    detailItem(context, 'Hoa hồng gửi giá mua giới', '50%'),
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
                    detailItem(context, 'Số điện thoại', '0399803834'),
                    detailItem(context, 'Hoa hồng', '1%'),
                    detailItem(
                        context, 'Gửi giá', '200 triệu - 130.000.000 m2'),
                    detailItem(context, 'Giá chào khách', '8,2 tỷ')
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
                    detailItem(context, 'Số điện thoại', '0399803834'),
                    detailItem(context, 'Hoa hồng', '1%'),
                    detailItem(
                        context, 'Gửi giá', '200 triệu - 130.000.000 m2'),
                    detailItem(context, 'Giá chào khách', '8,2 tỷ')
                  ],
                ),
              )),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Giá chào đến khách',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Text(
                  '8,4 tỷ - 136.000.000/m2',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(height: 30)
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
