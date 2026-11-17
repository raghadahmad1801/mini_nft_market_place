import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/string_manager.dart';
import 'package:mini_nft_marketplace/models/table_model.dart';

class CustomTableRow extends StatelessWidget {
  const CustomTableRow({super.key, required this.i, required this.tableModel});
  final int i;
  final TableModel tableModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: SizeManager.s60,
        child: Row(
          children: [
            Text("$i"),
            SizedBox(width: SizeManager.s10),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(RadiusManager.r9)),
              child: Image.asset(
                tableModel.image,
                width: SizeManager.s40,
                height: SizeManager.s40,
              ),
            ),
          ],
        ),
      ),

      title: Text(tableModel.title),
      subtitle: Text(StringManager.subTitleTable),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("${tableModel.price}", style: GoogleFonts.poppins()),
          SizedBox(height: SizeManager.s7_21),
          Text(
            "${tableModel.percent}%",
            style: GoogleFonts.poppins(
              textStyle: tableModel.percent > 0
                  ? TextStyle(color: ColorManager.green)
                  : TextStyle(color: ColorManager.red),
            ),
          ),
        ],
      ),
    );
  }
}
