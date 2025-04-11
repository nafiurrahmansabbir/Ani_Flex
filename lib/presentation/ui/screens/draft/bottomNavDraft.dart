
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(builder: (_) {
      return Scaffold(
        appBar: HomeAppBar(),
        drawer: HomeDrawer(),
        body: _screens[_navBarController.selectedIndex],
        bottomNavigationBar: NavigationBar(
            selectedIndex: _navBarController.selectedIndex,
            onDestinationSelected: _navBarController.changeIndex,
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: AppColors.themeColor.withOpacity(0.8),
                  ),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(
                    Icons.category_outlined,
                    color: AppColors.themeColor.withOpacity(0.8),
                  ),
                  label: 'Categories'),
              NavigationDestination(
                  icon: Icon(
                    Icons.video_collection_sharp,
                    color: AppColors.themeColor.withOpacity(0.8),
                  ),
                  label: 'My List'),
              NavigationDestination(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: AppColors.themeColor.withOpacity(0.8),
                  ),
                  label: 'Profile'),
            ]),
      );
    });
  }
}
