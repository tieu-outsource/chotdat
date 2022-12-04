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
                    detailItem(context, 'Gía chủ chào bán', '4,2 tỷ'),
                    detailItem(context, 'Hoa hồng chủ trả môi giới', '8% - 160.000.000 đ'),
                    detailItem(context, 'Giá bán chủ chốt', '4,6 tỷ'),
                    detailItem(context, 'Hoa hồng chủ chốt', '8% - 160.000.000 đ'),
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
                    detailItem(context, 'Gửi giá bán', '4,6 tỷ'),
                    detailItem(context, 'Hoa hồng được hưởng', '8% - 160.000.000 đ'),
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
                    detailItem(context, 'Gửi giá bán', '4,6 tỷ'),
                    detailItem(context, 'Hoa hồng được hưởng', '8% - 160.000.000 đ'),
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
                    detailItem(context, 'Giá mua đề nghị', '4,5 tỷ'),
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
