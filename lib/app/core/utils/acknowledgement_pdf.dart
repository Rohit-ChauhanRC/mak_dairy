import 'dart:io';
import 'package:flutter/services.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

import '../constants/constants.dart';
import 'app_colors.dart';

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

    final pdf = Document();
    //final XFile xFile;

    final imageJpg =
        (await rootBundle.load('assets/images/logo.png')).buffer.asUint8List();

    pdf.addPage(
      MultiPage(
        header: (_) {
          return Expanded(
            child: Container(
              // width: PDfP,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(
                10,
              ),

              height: 30,
              // color: PdfColors.red,
              //color: PdfColor.fromHex("#940404"),
              color: PdfColors.white,

              child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 30,

                    // color: PdfColors.red,
                    child: Text(
                      namePdf,
                      style: TextStyle(
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
          Flex(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ...imageFileList.map(
                (e) => Container(
                  height: 400,
                  width: 400,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(30),
                  child: Image(
                    MemoryImage(File(e.path).readAsBytesSync()),
                  ),
                ),
              ),
            ],
            direction: Axis.vertical,
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
    required Document pdf,
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

    final pdf = Document();
    //final XFile xFile;

    final imageJpg = (await rootBundle.load('assets/images/watermark.png'))
        .buffer
        .asUint8List();

    final font = await rootBundle.load("assets/fonts/OpenSans-Regular.ttf");
    final ttf = Font.ttf(font);

    pdf.addPage(
      MultiPage(
        pageTheme: PageTheme(
          theme: ThemeData.withFont(
            base: ttf,
          ),
          // orientation: PageOrientation.portrait,
          // margin: const EdgeInsets.all(10),
          clip: true,
          // textDirection: TextDirection.ltr,
          // pageFormat: const PdfPageFormat(300, 800),
          buildBackground: (Context context) => FullPage(
            ignoreMargins: true,
            child: Watermark(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image(
                      MemoryImage(
                        imageJpg,
                        dpi: 50,
                      ),
                    ).image,
                  ),
                ),
              ),
            ),
          ),
        ),
        header: (_) {
          return Container(
            // width: PDfP,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(
              10,
            ),

            height: 30,
            // color: PdfColors.red,
            //color: PdfColor.fromHex("#940404"),
            color: PdfColors.white,

            child: Align(
              alignment: Alignment.center,
              child: Container(
                  height: 30,

                  // color: PdfColors.red,
                  child: Text(
                    "CONTRIBUTION ACKNOWLEDGEMENT",
                    style: TextStyle(
                      fontSize: AppDimens.font20,
                      color: PdfColors.black,
                      font: ttf,
                      decoration: TextDecoration.underline,
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
          Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     dpi: 50,
            //     alignment: Alignment.center,
            //     image: .image,
            //   ),
            // ),
            //SizedBox(
            child: Flex(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                RichText(
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: AppDimens.font16,
                      color: PdfColors.black,
                      font: ttf,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                          text:
                              'MRS. Rashmi Rana, Thank you for applying for Contribution. We have received your payment on dated '),
                      TextSpan(
                          text: ' 31 Dec 2022',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      const TextSpan(
                        text: '   against',
                      ),
                      TextSpan(
                          text: ' 501',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      const TextSpan(
                        text: '   Project for',
                      ),
                      TextSpan(
                          text: '  3 Years',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      const TextSpan(
                        text:
                            '  Your receipt will be generated shortly subject to the Approval of concerned Department. Your Provisional Receipt No.',
                      ),
                      TextSpan(
                          text: ' F0000038.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            font: ttf,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: AppDimens.font14,
                      color: PdfColors.black,
                      font: ttf,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Note: '),
                      TextSpan(
                          text:
                              '\n*This is computer generated acknowledgement no signature required.',
                          style: TextStyle()),
                      TextSpan(
                        text: '\n*All the Terms and Conditions applied.',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: AppDimens.font12,
                      color: PdfColors.black,
                      font: ttf,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Generated Date & Time : 24 Nov 2023 02:35:26'),
                      TextSpan(
                          text:
                              '\n\n*This document is electronically generated, no signature is required.',
                          style: TextStyle()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
              direction: Axis.vertical,
            ),
          ),
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
}
