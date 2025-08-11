import 'package:flutter/material.dart';
import 'package:flutter_profile/commons.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home/components/screenshots.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/combined_image_grid.dart';

class ProjectDetailsScreen extends StatelessWidget {
  final Project project;

  const ProjectDetailsScreen({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Scaffold(
      appBar: AppBar(
        title: Text("Project Details"),
        elevation: 0,
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(defaultPadding),
        child: isMobile
            ? _buildMobileLayout(context)
            : _buildDesktopLayout(context),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Portfolio/",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(project.title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          _buildTechChips(),
          const SizedBox(height: 20,),
          if (project.images != null)
            CombinedRowNetworkImages(imageUrls: project.images!,tag: project.title,),
          const SizedBox(height: defaultPadding),
          _buildLinks(context),
          const SizedBox(height: 20),
          Text("DESCRIPTION",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10),
          AnimatedOpacity(
            opacity: 1,
            duration: const Duration(milliseconds: 500),
            child: Text(project.description),
          ),
          const SizedBox(height: 20),
          ResponsibilitiesSection(),
          const SizedBox(height: 20,),
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/mine.png"),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("AUTHOR",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 8,
                      ),
                    ),
                    Text("M. Usama Habib",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    Text("With over 4 years of experience in Flutter app development, I specialize in creating user-focused mobile applications that boost engagement and drive business profitability.",style: TextStyle(color: Colors.white,fontSize: 10),),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    final scrollController = ScrollController();
    final currentSection = ValueNotifier<String>('Overview');

    final overviewKey = GlobalKey();
    final linksKey = GlobalKey();
    final descriptionKey = GlobalKey();
    final responsibilitiesKey = GlobalKey();
    final authorKey = GlobalKey();

    final sectionKeys = {
      'Overview': overviewKey,
      'Links': linksKey,
      'Description': descriptionKey,
      'Responsibilities': responsibilitiesKey,
      'Author': authorKey,
    };

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.addListener(() {
        for (var entry in sectionKeys.entries) {
          final context = entry.value.currentContext;
          if (context != null) {
            final box = context.findRenderObject() as RenderBox;
            final position = box.localToGlobal(Offset.zero);
            final screenHeight = MediaQuery.of(context).size.height;

            if (position.dy >= 0 && position.dy < screenHeight * 0.3) {
              currentSection.value = entry.key;
              break;
            }
          }
        }
      });
    });

    void scrollTo(String section) {
      final key = sectionKeys[section];
      if (key != null && key.currentContext != null) {
        Scrollable.ensureVisible(
          key.currentContext!,
          duration: const Duration(milliseconds: 600),
          alignment: 0.1,
          curve: Curves.easeInOut,
        );
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -------- Main Scrollable Content --------
          Expanded(
            flex: 4,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      // Section: Overview
                      Container(
                        key: overviewKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Portfolio/", style: TextStyle(color: Colors.white70, fontSize: 14)),
                            Text(project.title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 10),
                            _buildTechChips(),
                            const SizedBox(height: 20),
                            if (project.images != null)
                              CombinedRowNetworkImages(imageUrls: project.images!,tag: project.title,)
                          ],
                        ),
                      ),
                      const SizedBox(height: defaultPadding),

                      // Section: Links
                      Container(
                        key: linksKey,
                        child: _buildLinks(context),
                      ),
                      const SizedBox(height: 20),
                      // Section: Description
                      Container(
                        key: descriptionKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("DESCRIPTION", style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white)),
                            const SizedBox(height: 10),
                            AnimatedOpacity(
                              opacity: 1,
                              duration: const Duration(milliseconds: 500),
                              child: Text(project.description),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Section: Responsibilities
                      Container(
                        key: responsibilitiesKey,
                        child: const ResponsibilitiesSection(),
                      ),
                      const SizedBox(height: 20),
                      // Section: Author
                      Container(
                        key: authorKey,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("assets/images/mine.png"),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("AUTHOR", style: TextStyle(color: Colors.white70, fontSize: 10)),
                                  Text("M. Usama Habib", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                                  Text(
                                    "With over 4 years of experience in Flutter app development, I specialize in creating user-focused mobile applications that boost engagement and drive business profitability.",
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // -------- Sticky Navigation --------
          Center(
            child: Container(
              width: 200,
              margin: const EdgeInsets.only(top: 40),
              child: ValueListenableBuilder<String>(
                valueListenable: currentSection,
                builder: (context, value, _) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DottedVerticalLine(height: 180),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: sectionKeys.keys.map((section) {
                          return _buildNavItem(
                            section,
                            value == section,
                                () => scrollTo(section),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white70,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ),
    );
  }


  Widget _buildTechChips() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: project.technologies
          .map((tech) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          tech,
          style: const TextStyle(color: Colors.black87,fontSize: 12),
        ),
      ))
          .toList(),
    );
  }

  Widget _buildLinks(BuildContext context) {
    final List<Widget> buttons = [];

    if (project.liveDemoLink != null) {
      buttons.add(_buildLinkButton(context,"Live Demo", Icons.language, project.liveDemoLink!));
    }
    if (project.playStoreLink != null) {
      buttons.add(_buildLinkButton(context,"Play Store", Icons.android, project.playStoreLink!));
    }
    if (project.appStoreLink != null) {
      buttons.add(_buildLinkButton(context,"App Store", Icons.apple, project.appStoreLink!));
    }
    if (project.screenshot != null) {
      buttons.add(_buildScreenShotButton(context,"Screenshots", Icons.apple, project.screenshot!));
    }

    return Wrap(
      spacing: 6,
      runSpacing: 10,
      children: buttons,
    );
  }

  Widget _buildLinkButton(BuildContext context, String label, IconData icon, String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: ElevatedButton.icon(
        onPressed: () async {
          final uri = Uri.parse(url);
          if(url.contains("assets")){
            if (!await launchUrl(uri, webOnlyWindowName: "_blank")) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Could not open CV")),
              );
            }
          }
          else{
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 4,
        ),
        icon: Icon(icon),
        label: Text(label),
      ),
    );
  }
  Widget _buildScreenShotButton(BuildContext context, String label, IconData icon, List<String> images) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: ElevatedButton.icon(
        onPressed: () async {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenshotsScreen(images: images,)));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 4,
        ),
        icon: Icon(icon),
        label: Text(label),
      ),
    );
  }
}

class ResponsibilitiesSection extends StatelessWidget {
  const ResponsibilitiesSection({super.key});

  final List<String> responsibilities = const [
    "Creating UI/UX Design using Figma according to the client’s request.",
    "Developing standardization for code and Flutter project.",
    "Developing the application to completion.",
    "Translating the designed UI into working app screens.",
    "Integrating it with the backend.",
    "Applying Flutter best practices.",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Scope of Responsibilities",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        ...responsibilities.map((item) => _buildBulletItem(item)).toList(),
      ],
    );
  }

  Widget _buildBulletItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 16, color: Colors.white)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white70,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
