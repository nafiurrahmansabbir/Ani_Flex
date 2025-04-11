

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                _navBarController.backToProfile();
              },
              child: CircleAvatar(
                child: Image.asset(AssetsPath.defaultAvatar),
              ),
            ),
            accountName: Text('Anya'),
            accountEmail: Text('SpyXAnya@gmail.com'),
            decoration: BoxDecoration(color: AppColors.themeColor),
          ),
          ListTile(
            leading: Icon(Icons.home, color: AppColors.themeColor),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
              _navBarController.backToHome();
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline, color: AppColors.themeColor),
            title: Text("Favorite"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shop, color: AppColors.themeColor),
            title: const Text('My List'),
            onTap: () {
              Navigator.pop(context);
              _navBarController.backToMyList();
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: AppColors.themeColor),
            title: const Text('Settings'),
            onTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'version 2.3.1',
              style: TextStyle(color: AppColors.themeColor),
            ),
          ),
        ],
      ),
    );
  }
}
