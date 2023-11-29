import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart';

import 'app_dimens.dart';

heading(Uint8List imageJpg, Uint8List logo, Font ttf) {
  //

  return pw.Row(
    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
    children: [
      pw.Container(
        alignment: pw.Alignment.center,
        height: 50,
        width: 50,
        // color: PdfColor(1, 0, 0),
        child: pw.Image(
          pw.MemoryImage(
            logo,
            dpi: 100,
          ),
          fit: pw.BoxFit.scaleDown,
          height: 50,
          width: 50,
        ),
      ),
      pw.Flex(
        direction: pw.Axis.vertical,
        // crossAxisAlignment: pw.CrossAxisAlignment.start,
        mainAxisAlignment: pw.MainAxisAlignment.center,
        mainAxisSize: pw.MainAxisSize.min,
        children: [
          pw.Align(
            alignment: pw.Alignment.center,
            child: pw.Text(
              'M/S MAK LIFE DAIRY PRODUCER COMPANY LIMITED',
              textAlign: pw.TextAlign.center,
              style: pw.TextStyle(
                fontSize: AppDimens.font14,
                color: PdfColors.black,
                font: ttf,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
          ),
          pw.Align(
            alignment: pw.Alignment.center,
            child: pw.Text(
              'CIN NO. U01100HR2022PTC105167',
              textAlign: pw.TextAlign.center,
              style: pw.TextStyle(
                fontSize: AppDimens.font10,
                color: PdfColors.black,
                font: ttf,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
          ),
          pw.Align(
            alignment: pw.Alignment.centerLeft,
            child: pw.Text(
              'Regd Office :- Unit No.850, Tower B2,Spaze I-Tech Park, Sohna Road, Sector 49, Gurugram - 122018.',
              textAlign: pw.TextAlign.left,
              style: pw.TextStyle(
                fontSize: AppDimens.font8,
                color: PdfColors.black,
                font: ttf,
                fontWeight: pw.FontWeight.bold,
              ),
              overflow: pw.TextOverflow.visible,
            ),
          ),
          pw.Align(
            alignment: pw.Alignment.center,
            child: pw.Text(
              'Email ID :- info@maklifedairy.in, Landline Number :- 0124 436 5307',
              textAlign: pw.TextAlign.left,
              style: pw.TextStyle(
                fontSize: AppDimens.font8,
                color: PdfColors.black,
                font: ttf,
                fontWeight: pw.FontWeight.bold,
              ),
              overflow: pw.TextOverflow.visible,
            ),
          ),
        ],
      ),
      pw.SizedBox(width: 20),
    ],
  );
}

text(String text, Font? ttf, {bool bold = false}) {
  return pw.SizedBox(
    child: pw.Text(
      text,
      textAlign: pw.TextAlign.left,
      style: pw.TextStyle(
        fontSize: AppDimens.font12,
        color: PdfColors.black,
        font: ttf,
        fontWeight: bold ? pw.FontWeight.bold : pw.FontWeight.normal,
      ),
    ),
    width: 5.0 * PdfPageFormat.cm,
  );
}

tableFrom(List<List<dynamic>> data) {
  return pw.TableHelper.fromTextArray(
      border: pw.TableBorder.all(
        color: PdfColors.black,
        width: 1,
      ),
      data: data);
}
