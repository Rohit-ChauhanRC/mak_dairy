import 'dart:io';
import 'package:flutter/services.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class AckPdfFiles {
  //

  static loadImg(XFile xFile) async {
    final imageJpg = (await rootBundle.load(xFile.path)).buffer.asUint8List();

    return imageJpg;
  }

  static Future<File> generateImagePdf(
    List<XFile> imageFileList,
    String namePdf,
  ) async {
    //

    final pdf = pw.Document();
    //final XFile xFile;

    final imageJpg =
        (await rootBundle.load('assets/images/logo.png')).buffer.asUint8List();

    pdf.addPage(
      pw.MultiPage(
        header: (_) {
          return pw.Expanded(
            child: pw.Container(
              // width: PDfP,
              alignment: pw.Alignment.center,
              padding: const pw.EdgeInsets.all(
                10,
              ),

              height: 30,
              // color: PdfColors.red,
              //color: PdfColor.fromHex("#940404"),
              color: PdfColors.white,

              child: pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Container(
                    height: 30,

                    // color: PdfColors.red,
                    child: pw.Text(
                      namePdf,
                      style: pw.TextStyle(
                        fontSize: AppDimens.font20,
                        color: PdfColor.fromHex("#940404"),

                        //color: PdfColors.white,
                      ),
                    )),
              ),
            ),
          );
        },
        build: (_) => [
          //Divider(),
          //SizedBox(
          //  height: 0.2 * PdfPageFormat.cm,
          //),
          pw.Flex(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.center,
            mainAxisSize: pw.MainAxisSize.min,
            children: [
              ...imageFileList.map(
                (e) => pw.Container(
                  height: 400,
                  width: 400,
                  alignment: pw.Alignment.center,
                  margin: const pw.EdgeInsets.all(30),
                  child: pw.Image(
                    pw.MemoryImage(File(e.path).readAsBytesSync()),
                  ),
                ),
              ),
            ],
            direction: pw.Axis.vertical,
          ),
          //SizedBox(
          //  height: 0.2 * PdfPageFormat.cm,
          //),
        ],
      ),
    );

    return saveDocument(
      name: "$namePdf.pdf",
      pdf: pdf,
    );
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

  static Future<File> generateAckPdf(
    String namePdf,
  ) async {
    //

    final pdf = pw.Document();
    //final XFile xFile;

    final imageJpg = (await rootBundle.load('assets/images/watermark.png'))
        .buffer
        .asUint8List();

    final font = await rootBundle.load("assets/fonts/OpenSans-Regular.ttf");
    final ttf = pw.Font.ttf(font);

    // final abc = pw.Image();

    pdf.addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          theme: pw.ThemeData.withFont(
            base: ttf,
          ),
          pageFormat: const PdfPageFormat(
            800,
            400,
            marginAll: 20,
          ),
          clip: true,
          buildBackground: (pw.Context context) => pw.FullPage(
            ignoreMargins: true,
            child: pw.Container(
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
        header: (_) {
          return pw.Container(
            // width: PDfP,
            alignment: pw.Alignment.center,
            padding: const pw.EdgeInsets.all(
              10,
            ),

            height: 30,
            // color: PdfColors.red,
            //color: PdfColor.fromHex("#940404"),
            color: PdfColors.white,

            child: pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Container(
                  height: 30,

                  // color: PdfColors.red,
                  child: pw.Text(
                    "CONTRIBUTION ACKNOWLEDGEMENT",
                    style: pw.TextStyle(
                      fontSize: AppDimens.font20,
                      color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold,
                      font: ttf,
                      decoration: pw.TextDecoration.underline,
                      //color: PdfColors.white,
                    ),
                  )),
            ),
          );
          //return Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //  children: [
          //    Container(
          //      child: Text(
          //        namePdf,
          //        style: TextStyle(
          //          color: PdfColor.fromHex("#940404"),
          //          fontSize: AppFonts.font20,
          //        ),
          //      ),
          //    ),
          //    Container(
          //      alignment: Alignment.topRight,
          //      height: 30.h,
          //      width: 30.w,
          //      child: Image(
          //        MemoryImage(
          //          (imageJpg),
          //          dpi: 200,
          //        ),
          //      ),
          //    )
          //  ],
          //);
        },
        build: (_) => [
          //Divider(),
          pw.Container(
            child: pw.Flex(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              mainAxisAlignment: pw.MainAxisAlignment.center,
              mainAxisSize: pw.MainAxisSize.min,
              children: [
                pw.SizedBox(
                  height: 20,
                ),
                pw.RichText(
                  overflow: pw.TextOverflow.visible,
                  textAlign: pw.TextAlign.left,
                  text: pw.TextSpan(
                    style: pw.TextStyle(
                      fontSize: AppDimens.font16,
                      color: PdfColors.black,
                      font: ttf,
                    ),
                    children: <pw.TextSpan>[
                      const pw.TextSpan(
                          text:
                              'MRS. Rashmi Rana, Thank you for applying for Contribution. We have received your payment on dated '),
                      pw.TextSpan(
                          text: ' 31 Dec 2022',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                          )),
                      const pw.TextSpan(
                        text: '   against',
                      ),
                      pw.TextSpan(
                          text: ' 501',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                          )),
                      const pw.TextSpan(
                        text: '   Project for',
                      ),
                      pw.TextSpan(
                          text: '  3 Years',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                          )),
                      const pw.TextSpan(
                        text:
                            '  Your receipt will be generated shortly subject to the Approval of concerned Department. Your Provisional Receipt No.',
                      ),
                      pw.TextSpan(
                          text: ' F0000038.',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            font: ttf,
                          )),
                    ],
                  ),
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Align(
                  alignment: pw.Alignment.centerLeft,
                  child: pw.Text(
                    'Note: ',
                    textAlign: pw.TextAlign.left,
                    style: pw.TextStyle(
                      fontSize: AppDimens.font14,
                      color: PdfColors.black,
                      font: ttf,
                    ),
                  ),
                ),
                pw.Bullet(
                  text:
                      'This is computer generated acknowledgement no signature required.',
                  style: pw.TextStyle(
                    fontSize: AppDimens.font14,
                    color: PdfColors.black,
                    font: ttf,
                  ),
                ),
                pw.Bullet(
                  text: 'All the Terms and Conditions applied.',
                  style: pw.TextStyle(
                    fontSize: AppDimens.font14,
                    color: PdfColors.black,
                    font: ttf,
                  ),
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Align(
                  alignment: pw.Alignment.centerLeft,
                  child: pw.Text(
                    'Generated Date & Time : 24 Nov 2023 02:35:26',
                    textAlign: pw.TextAlign.left,
                    style: pw.TextStyle(
                      fontSize: AppDimens.font12,
                      color: PdfColors.black,
                      font: ttf,
                    ),
                  ),
                ),
                pw.SizedBox(
                  height: 20,
                ),
                pw.Align(
                  alignment: pw.Alignment.centerLeft,
                  child: pw.Text(
                    'This document is electronically generated, no signature is required.',
                    textAlign: pw.TextAlign.left,
                    style: pw.TextStyle(
                      fontSize: AppDimens.font12,
                      color: PdfColors.black,
                      font: ttf,
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
