import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'bible_reading/bible_reading_view.dart';

class BibleVersionDetailView extends StatefulWidget {
  final String version;

  const BibleVersionDetailView({super.key, required this.version});

  @override
  State<BibleVersionDetailView> createState() => _BibleVersionDetailViewState();
}

class _BibleVersionDetailViewState extends State<BibleVersionDetailView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  final Map<String, String> versionDescriptions = {
    "King James Version (KJV)":
        "Revered for its majestic language and historical significance, the KJV is a literal translation that has shaped English literature for centuries.",
    "New King James Version (NKJV)":
        "An update of the KJV that retains traditional style while offering modern readability and clarity.",
    "English Standard Version (ESV)":
        "Aiming for word-for-word accuracy, the ESV balances literary excellence with scholarly precision.",
    "New American Standard Bible (NASB)":
        "Known for its strict adherence to the original texts, providing one of the most literal translations available.",
    "New International Version (NIV)":
        "Prioritizes clarity and readability by translating biblical texts into contemporary language while preserving meaning.",
  };

  final List<String> oldTestament = ['Genesis', 'Exodus', 'Leviticus'];
  final List<String> newTestament = ['Matthew', 'Mark', 'Luke'];

  final Map<String, int> chapterCounts = {
    'Genesis': 50,
    'Exodus': 40,
    'Leviticus': 27,
    'Matthew': 28,
    'Mark': 16,
    'Luke': 24,
  };

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final description = versionDescriptions[widget.version] ?? '';

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Back Button and Label
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Bible',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),

              // Animated Title & Description
              SlideTransition(
                position: _slideAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.version,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF5C5C5C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Tab Bar
              const TabBar(
                indicatorColor: tabColor,
                labelColor: tabColor,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'Old Testament'),
                  Tab(text: 'New Testament'),
                ],
              ),

              // Tab View Content
              Expanded(
                child: TabBarView(
                  children: [
                    _buildExpandableBookList(oldTestament),
                    _buildExpandableBookList(newTestament),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandableBookList(List<String> books) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        final bookName = books[index];
        final chapterCount = chapterCounts[bookName] ?? 1;

        return ExpansionTile(
          title: Text(
            bookName,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: chapterCount,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  final chapter = index + 1;
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BibleReadingView(
                            version: widget.version,
                            book: bookName,
                            chapter: chapter,
                            title: bookName,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        '$chapter',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
