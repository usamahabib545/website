import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Pakistan",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Faisalabad",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "25",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        final Uri pdfUrl = Uri.parse("https://drive.google.com/file/d/1CbePRB8Yk7tcWVx2P52P2sHIEtNEhGYZ/view?usp=drivesdk");
                        if (!await launchUrl(pdfUrl, webOnlyWindowName: "_blank")) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Could not open CV")),
                          );
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyLarge!.color,
                              ),
                            ),
                            const SizedBox(width: 8),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              openWebUrl("https://www.linkedin.com/in/usama-habib-ba3186191");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              openWebUrl("https://github.com/usamahabib545");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              openWebUrl("https://x.com/usamahabib545?t=3-LtktoHmNEy4b4SMFIW0g&s=09");
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void openWebUrl(link) async {
    final Uri url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
