import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

import 'pdf_common.dart';

class MemberReceiptPdf {
  //

  static loadImg(XFile xFile) async {
    final imageJpg = (await rootBundle.load(xFile.path)).buffer.asUint8List();

    return imageJpg;
  }

  static openFile({
    required String name,
  }) async {
    //final url = file.path;
    final dir = await getApplicationDocumentsDirectory();
    print("$name");
    print("$dir");
    await OpenFile.open("${dir.path}/$name");
  }

  static Future<File> saveDocument({
    required String name,
    required pw.Document pdf,
  }) async {
    //
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    return file;
  }

  static Future<String> sharePdf({
    required String name,
  }) async {
    final dir = await getApplicationDocumentsDirectory();

    return '${dir.path}/$name';
  }

  static Future<File> generateReceiptPdf(
    String namePdf,
  ) async {
    //

    final pdf = pw.Document();
    //final XFile xFile;

    final imageJpg = (await rootBundle.load('assets/images/watermark.png'))
        .buffer
        .asUint8List();
    final logo = (await rootBundle.load('assets/images/MAKLIFE.png'))
        .buffer
        .asUint8List();

    final font = await rootBundle.load("assets/fonts/OpenSans-Regular.ttf");
    final ttf = pw.Font.ttf(font);

    pdf.addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          theme: pw.ThemeData.withFont(
            base: ttf,
          ),
          pageFormat: PdfPageFormat.a4,
          clip: true,
          buildBackground: (pw.Context context) => pw.FullPage(
            ignoreMargins: true,
            child: pw.Container(
              alignment: pw.Alignment.center,
              child: pw.Opacity(
                opacity: 0.5,
                child: pw.Container(
                    alignment: pw.Alignment.center,
                    height: 280,
                    width: 280,
                    // color: PdfColor(1, 0, 0),
                    child: pw.Image(
                      pw.MemoryImage(
                        imageJpg,
                        dpi: 100,
                      ),
                      fit: pw.BoxFit.scaleDown,
                      height: 280,
                      width: 280,
                    )),
              ),
            ),
          ),
        ),
        build: (_) => [
          //Divider(),
          heading(imageJpg, logo, ttf),
          pw.SizedBox(height: 20),
          pw.Container(
            child: pw.Flex(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              mainAxisAlignment: pw.MainAxisAlignment.center,
              mainAxisSize: pw.MainAxisSize.min,
              children: [
                pw.SizedBox(
                  height: 20,
                ),
                tableFrom(
                  [
                    [
                      text('Name of Member', ttf),
                      text('RASHMI RANA', ttf, bold: true),
                      text('Member Address', ttf),
                      text(
                          'S/O,W/O,D/O BHAJ GOVIND SINGH RANA GOVIND NIWAS 20 FT ROAD KHAIRI KHURD SATYA NARAYAN DEHRADUN UTTARAKHAND 249204',
                          ttf,
                          bold: true),
                    ],
                    [
                      text('Member ID No.', ttf),
                      text('MLD7000024', ttf, bold: true),
                      text('Contribution Date', ttf),
                      text('31 Dec 2022', ttf, bold: true),
                    ],
                    [
                      text('Contribution Amount', ttf),
                      text('5500', ttf, bold: true),
                      text('Project Term(Years)', ttf),
                      text('3', ttf, bold: true),
                    ],
                    [
                      text('Mode', ttf),
                      text('MONTHLY', ttf, bold: true),
                      text('Total Contribution Amount', ttf),
                      text('180000.0', ttf, bold: true),
                    ],
                    [
                      text('Nominee Name', ttf),
                      text('BHAJ GOVIND SINGH RANA', ttf, bold: true),
                      text('Nominee Relation', ttf),
                      text('HUSBAND', ttf, bold: true),
                    ],
                    [
                      text('Nominee DOB', ttf),
                      text('16 Sep 1967', ttf, bold: true),
                      text('Member DOB', ttf),
                      text('13 Dec 1973', ttf, bold: true),
                    ],
                    [
                      text('Expiry Of Term', ttf),
                      text('30 Dec 2025', ttf, bold: true),
                      text('Estimated Return Value', ttf),
                      text('220000.0', ttf, bold: true),
                    ],
                    [
                      text('Contribution No. ', ttf),
                      text('1', ttf, bold: true),
                      text('Next Due Date', ttf),
                      text('02-Dec-2023', ttf, bold: true),
                    ],
                    [
                      text('Referral Aadhar Number', ttf),
                      text('881569269744', ttf, bold: true),
                      text('', ttf),
                      text('', ttf, bold: true),
                    ],
                  ],
                ),
                pw.SizedBox(height: 20),
                pw.Align(
                  alignment: pw.Alignment.centerLeft,
                  child: pw.Text(
                    'Note: This is computer generated receipt, signature not required.',
                    textAlign: pw.TextAlign.left,
                    style: pw.TextStyle(
                      fontSize: AppDimens.font12,
                      color: PdfColors.black,
                      font: ttf,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ),
              ],
              direction: pw.Axis.vertical,
            ),
          ),
        ],
      ),
    );
    return saveDocument(
      name: "$namePdf.pdf",
      pdf: pdf,
    );
  }
}
