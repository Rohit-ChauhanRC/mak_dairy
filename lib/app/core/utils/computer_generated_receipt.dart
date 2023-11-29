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

class ComputerGeneratedReceipt {
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
                      text('Date ', ttf),
                      text('31 JAN 2023', ttf, bold: true),
                      text('Receipt No. ', ttf),
                      text('R0000006', ttf, bold: true),
                    ],
                    [
                      text('Contribution No.', ttf),
                      text('MLD7000024', ttf, bold: true),
                      text('Membership No.', ttf),
                      text('SID7000000107', ttf, bold: true),
                    ],
                    [
                      text('Contribution Instalment No.', ttf),
                      text('2', ttf, bold: true),
                      text('Next Due Date', ttf),
                      text('02 March 2023', ttf, bold: true),
                    ],
                  ],
                ),
                tableFrom([
                  [
                    pw.RichText(
                      overflow: pw.TextOverflow.visible,
                      textAlign: pw.TextAlign.left,
                      text: pw.TextSpan(
                        style: pw.TextStyle(
                          fontSize: AppDimens.font12,
                          color: PdfColors.black,
                          font: ttf,
                        ),
                        children: <pw.TextSpan>[
                          const pw.TextSpan(
                              text: 'Received with Thanks a total sum of Rs.'),
                          pw.TextSpan(
                              text: ' 5502.00',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              )),
                          const pw.TextSpan(text: ' Amount in Word Rs. '),
                          pw.TextSpan(
                              text: ' Five Thousand Five Hundred and Two ONLY',
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                              )),
                          const pw.TextSpan(
                              text:
                                  ' On Account Of "MAK LIFE DAIRY PRODUCER COMPANY LIMITED" contribution for Dairy Project'),
                        ],
                      ),
                    ),
                  ]
                ]),
                tableFrom(
                  [
                    [
                      text('From Mr/Mrs/Ms.', ttf),
                      text('RASHMI RANA', ttf, bold: true),
                      text('So/Do/Wo Mr/Mrs/Ms.', ttf),
                      text('BHAJ GOVIND SINGH RANA', ttf, bold: true),
                    ],
                  ],
                ),
                tableFrom(
                  [
                    [
                      pw.SizedBox(
                        child: pw.Text(
                          'R/o GOVIND NIWAS 20 FT ROAD VILL/COLONY KHAIRI KHURD, CITY SATYA NARAYAN, DISTT DEHRADUN, STATE UTTARAKHAND, PIN 249204',
                          textAlign: pw.TextAlign.left,
                          style: pw.TextStyle(
                            fontSize: AppDimens.font12,
                            color: PdfColors.black,
                            font: ttf,
                          ),
                        ),
                        width: 10.35 * PdfPageFormat.cm,
                      ),
                      text('Contact No.', ttf),
                      text('9876543210', ttf, bold: true),
                    ],
                  ],
                ),
                tableFrom(
                  [
                    [
                      text('Nominee Detail: Name', ttf),
                      text('BHAJ GOVIND SINGH RANA', ttf, bold: true),
                      text('Age: 16 Sep 1967', ttf),
                      text('Relation : HUSBAND', ttf, bold: true),
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
