import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../core/widgets/bottom_nav_bar.dart';
import '../bible/bible_view.dart';
import '../chat/chat_view.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';
import 'main_screen_viewmodel.dart';

class MainScreenView extends StackedView<MainScreenViewModel> {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: viewModel.pageController,
        onPageChanged: viewModel.setCurrentIndex,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const HomeView(),
          const ChatView(),
          Navigator(
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (_) => const BibleVersionSelectionView(),
            ),
          ),
          Navigator(
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (_) => const ProfileView(),
            ),
          ),
          // const ProfileView(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: viewModel.currentIndex,
        onTap: viewModel.setPage,
      ),
    );
  }

  @override
  MainScreenViewModel viewModelBuilder(BuildContext context) =>
      MainScreenViewModel();
}
