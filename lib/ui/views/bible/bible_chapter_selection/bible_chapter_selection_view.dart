import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bible_chapter_selection_viewmodel.dart';

class BibleChapterSelectionView
    extends StackedView<BibleChapterSelectionViewModel> {
  final String version;
  const BibleChapterSelectionView({Key? key, required this.version})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BibleChapterSelectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Bible Verses, Chapters, Quotes',
                  prefixIcon: Icon(Icons.search, color: darkGreyColor),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                onChanged: viewModel.setSearchQuery,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                version,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              ),
            ),
            TabBar(
              controller: viewModel.tabController,
              tabs: const [
                Tab(text: 'Old Testament'),
                Tab(text: 'New Testament'),
              ],
              indicatorColor: primaryColor,
            ),
            Expanded(
              child: TabBarView(
                controller: viewModel.tabController,
                children: [
                  _buildBookList(context, viewModel, 'old'),
                  _buildBookList(context, viewModel, 'new'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookList(BuildContext context,
      BibleChapterSelectionViewModel viewModel, String testament) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: viewModel.books.length,
      itemBuilder: (context, index) {
        final book = viewModel.books[index];
        return ExpansionTile(
          leading: Icon(Icons.book, color: blackColor),
          title: Text(book['name'],
              style: TextStyle(fontSize: 16, color: blackColor)),
          children: List.generate(book['chapters'], (i) {
            return ListTile(
              title: Text('${i + 1}'),
              onTap: () => viewModel.selectChapter(book['name'], i + 1),
            );
          }),
        );
      },
    );
  }

  @override
  BibleChapterSelectionViewModel viewModelBuilder(BuildContext context) =>
      BibleChapterSelectionViewModel(version);
}
