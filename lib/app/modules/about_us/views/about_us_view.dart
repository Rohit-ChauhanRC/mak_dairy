import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mak_dairy/app/core/utils/app_dimens.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/copy_right.dart';
import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  const AboutUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const SizedBox(height: 80, child: CopyRight()),
      appBar: AppBar(
        title: SizedBox(
          width: Get.width - 20,
          child: Text(
            Constants.appbarTitle.toUpperCase().toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            overflow: TextOverflow.visible,
          ),
        ),
        backgroundColor: Colors.purple[900],
        centerTitle: true,
      ),
      body: Container(
        height: Get.height * 0.8,
        margin: const EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              // height: 60,
              child: Text(
                Constants.welMak,
                style: TextStyle(
                    color: Colors.purple[900],
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: AppDimens.font16,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'Mak Life Dairy Producer Company Limited was established on 14th July 2022 with vision to improve the livelihood of Milk Producers and Farmers across India. The Company'),
                  TextSpan(
                      text: ' (MLDPCL)',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text:
                        '  is registered under The Companies Act, 2013 and has got its Head Office in Gurugram, Haryana.',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.black,
                  ),
                  text:
                      "MLDPCL aims to join hands with Milk Producers and Farmers by procuring milk produced by them through its collection centres that are efficiently run with state-of-the-art equipment. MLDPCL has one of the emerging, most preferred and robust legal framework for organizing, integration with market and insuring self-sustained professional support system to their member (Farmers)."),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.black,
                  ),
                  text:
                      "The aim of our Company is to capture the market of Milk collection throughout the country and to provide benefits to the Members who are directly or indirectly associated with us."),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.black,
                  ),
                  text:
                      "MLDPCL has skilled and experienced manpower in the Dairy business. Company ensures to procure 100% milk from the Milk Producers and give a fair value of their milk within a time frame."),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.black,
                  ),
                  text:
                      "Our Company will support the Members in increasing the production of Milk so that every member shall earn as much as he/she can."),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.black,
                  ),
                  text:
                      "M/s Mak Life Dairy Producer Company Limited is a Producer Company registered under the Companies Act, 2013. The motive of Incorporation of this company is to give better benefits to the local Milk Producers/ Farmers who agree to become a part of this organisation. There are following ways of raising funds in the Producer Company as per the Companies Act, 2013 they are",
                  children: [
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n1. Through its own Members,",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n2. Through Banks/ NABARD,",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text:
                          "\nSo, we are providing a platform to all the Milk Producers to join our organisation and become the part of it. There are the following way by which they can join the Company aand contribute in the Project undertaken bu the Company. Every year, The Company will give return by the way of Patronage Bonus/ part of Profit to the Members",
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                      text: "Way to become the part of this organisation:",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text:
                          "\n\n1.  As per the Companies Act, 2013 without Membership no one can contribute any amount in the Producer Company. The company has set an eligibility criteria for becoming a Member i.e. any person who wants to join this organisation will fill the share application form through our Application Mak Life Dairy. (Minimum subscription is 5 Shares of Rs. 10 each)",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text:
                          "\n2. After the completion of share Application form one unique share ID will be alloted to Member.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text:
                          "\n3. Afterwards the Member shall contribute in the Project of the company.",
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  style: TextStyle(
                    fontSize: AppDimens.font16,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      text: "Rights of Members:",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text:
                          "\n\n1. Every Member shall have right to vote in the General Meeting of the company.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n2. Right to receive information.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n3. Right to give approval.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n4. Right to appoint and remove directors.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n5. Right to appoint an auditor.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n6. Right to requisition a meeting.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text:
                          "\n7. Provisions relating to Oppression and mismanagement. Minimum of 100 members or 10% of the total number of the members (whichever is less), or members holding at least 10% of the issued share capital of the company can approach the National Company Law Tribunal to initiate oppression or mismanagement .",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text: "\n8. Provisions relating to Class action suits.",
                    ),
                    TextSpan(
                      style: TextStyle(
                        fontSize: AppDimens.font16,
                        color: Colors.black,
                      ),
                      text:
                          "\n9. Application to the Serious Fraud Investigation Office.",
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
