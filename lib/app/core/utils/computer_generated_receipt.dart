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

    _text(String text, {bool bold = false}) {
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

    // final abc = pw.Image();

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
        // header: (_) {
        //   return pw.Row(
        //     mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        //     children: [
        //       pw.Container(
        //         alignment: pw.Alignment.center,
        //         height: 50,
        //         width: 50,
        //         // color: PdfColor(1, 0, 0),
        //         child: pw.Image(
        //           pw.MemoryImage(
        //             imageJpg,
        //             dpi: 100,
        //           ),
        //           fit: pw.BoxFit.scaleDown,
        //           height: 50,
        //           width: 50,
        //         ),
        //       ),
        //       pw.Column(
        //         children: [
        //           pw.Align(
        //             alignment: pw.Alignment.center,
        //             child: pw.Text(
        //               'M/S MAK LIFE DAIRY PRODUCER COMPANY LIMITED',
        //               textAlign: pw.TextAlign.center,
        //               style: pw.TextStyle(
        //                 fontSize: AppDimens.font16,
        //                 color: PdfColors.black,
        //                 font: ttf,
        //                 fontWeight: pw.FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           pw.Align(
        //             alignment: pw.Alignment.centerLeft,
        //             child: pw.Text(
        //               'CIN NO. U01100HR2022PTC105167',
        //               textAlign: pw.TextAlign.left,
        //               style: pw.TextStyle(
        //                 fontSize: AppDimens.font14,
        //                 color: PdfColors.black,
        //                 font: ttf,
        //                 fontWeight: pw.FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           pw.Align(
        //             alignment: pw.Alignment.centerLeft,
        //             child: pw.Text(
        //               'Regd Office :- Unit No.850, Tower B2,Spaze I-Tech Park, Sohna Road, Sector 49, Gurugram - 122018.',
        //               textAlign: pw.TextAlign.left,
        //               style: pw.TextStyle(
        //                 fontSize: AppDimens.font12,
        //                 color: PdfColors.black,
        //                 font: ttf,
        //                 fontWeight: pw.FontWeight.bold,
        //               ),
        //               overflow: pw.TextOverflow.visible,
        //             ),
        //           ),
        //           pw.Align(
        //             alignment: pw.Alignment.center,
        //             child: pw.Text(
        //               'Email ID :- info@maklifedairy.in, Landline Number :- 0124 436 5307',
        //               textAlign: pw.TextAlign.left,
        //               style: pw.TextStyle(
        //                 fontSize: AppDimens.font14,
        //                 color: PdfColors.black,
        //                 font: ttf,
        //                 fontWeight: pw.FontWeight.bold,
        //               ),
        //               overflow: pw.TextOverflow.visible,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   );
        // },
        build: (_) => [
          //Divider(),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.start,
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
            ],
          ),
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
                pw.TableHelper.fromTextArray(
                  // tableDirection: TableDecoration(),

                  data: [
                    [
                      _text('Date '),
                      _text('31 JAN 2023', bold: true),
                      _text('Receipt No. '),
                      _text('R0000006', bold: true),
                    ],
                    [
                      _text('Contribution No.'),
                      _text('MLD7000024', bold: true),
                      _text('Membership No.'),
                      _text('SID7000000107', bold: true),
                    ],
                    [
                      _text('Contribution Instalment No.'),
                      _text('2', bold: true),
                      _text('Next Due Date'),
                      _text('02 March 2023', bold: true),
                    ],
                  ],
                  border: pw.TableBorder.all(
                    color: PdfColors.black,
                    width: 1,
                  ),
                ),
                pw.TableHelper.fromTextArray(
                    border: pw.TableBorder.all(
                      color: PdfColors.black,
                      width: 1,
                    ),
                    data: [
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
                                  text:
                                      'Received with Thanks a total sum of Rs.'),
                              pw.TextSpan(
                                  text: ' 5502.00',
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                  )),
                              const pw.TextSpan(text: ' Amount in Word Rs. '),
                              pw.TextSpan(
                                  text:
                                      ' Five Thousand Five Hundred and Two ONLY',
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
                pw.TableHelper.fromTextArray(
                  // tableDirection: TableDecoration(),

                  data: [
                    [
                      _text('From Mr/Mrs/Ms.'),
                      _text('RASHMI RANA', bold: true),
                      _text('So/Do/Wo Mr/Mrs/Ms.'),
                      _text('BHAJ GOVIND SINGH RANA', bold: true),
                    ],
                  ],
                  border: pw.TableBorder.all(
                    color: PdfColors.black,
                    width: 1,
                  ),
                ),
                pw.TableHelper.fromTextArray(
                  data: [
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
                      _text('Contact No.'),
                      _text('9876543210', bold: true),
                    ],
                  ],
                  border: pw.TableBorder.all(
                    color: PdfColors.black,
                    width: 1,
                  ),
                ),
                pw.TableHelper.fromTextArray(
                  // tableDirection: TableDecoration(),

                  data: [
                    [
                      _text('Nominee Detail: Name'),
                      _text('BHAJ GOVIND SINGH RANA', bold: true),
                      _text('Age: 16 Sep 1967'),
                      _text('Relation : HUSBAND', bold: true),
                    ],
                  ],
                  border: pw.TableBorder.all(
                    color: PdfColors.black,
                    width: 1,
                  ),
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
