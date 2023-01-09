import 'package:chotdat/color.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:flutter/material.dart';

class DealDetailTab extends StatelessWidget {
  const DealDetailTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          NamedCard(
              title: 'Thương lượng chủ sở hữu',
              titleWidth: 210,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên chủ sở hữu', 'Nguyễn Văn A'),
                    detailItem(context, 'Gía chủ chào bán', '4.200.000.000 đ'),
                    detailItem(context, 'Hoa hồng chủ trả môi giới', '2% - 82.000.000 đ'),
                    detailItem(context, 'Giá bán chủ chốt', '4.000.000.000 đ'),
                    detailItem(context, 'Hoa hồng chủ chốt', '3% - 120.000.000 đ'),
                  ],
                ),
              )),
          NamedCard(
              title: 'Thương lượng môi giới đầu chủ',
              titleWidth: 240,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên môi giới', 'Nguyễn Văn B'),
                    detailItem(context, 'Gửi giá bán', '200.000.000 đ'),
                    detailItem(context, 'Hoa hồng được hưởng', '2% - 80.000.000 đ'),
                  ],
                ),
              )),
          NamedCard(
              title: 'Thương lượng môi giới đầu khách',
              titleWidth: 260,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên môi giới', 'Nguyễn Văn C'),
                    detailItem(context, 'Gửi giá bán', '300.000.000 đ'),
                    detailItem(context, 'Hoa hồng được hưởng', '1% - 40.000.000 đ'),
                  ],
                ),
              )),
          NamedCard(
              title: 'Thương lượng khách mua',
              titleWidth: 220,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                    detailItem(context, 'Tên khách mua', 'Nguyễn Văn D'),
                    detailItem(context, 'Giá chào bán tới khách', '4.500.000.000 đ'),
                    detailItem(context, 'Giá khách trả', '4.300.000.000 đ'),
                    detailItem(context, 'Ghi chú', 'Khách mua có nhu cầu mua ngay'),
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
