 Divider(),
 //Inside Divider
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Favorite",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesome.download,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Downloads",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Language",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Location",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.subscriptions,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Subscription",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.delete,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Clear Cache",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.history_outlined,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Clear History",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.logout_rounded,
                            color: AppColors.themeColor,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Logout",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => LogoutPopupDialog(),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.themeColor,
                          ))
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

}
