import 'package:warehouse/config/constants/application_images.dart';
import 'package:warehouse/l10n/app_localizations.dart';
import 'package:warehouse/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocation = GoRouterState.of(context).uri.toString();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(
          top: Scaffold.of(context).isDrawerOpen ? 5 : 50,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (Scaffold.of(context).isDrawerOpen)
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.cancel),
                ),
            ],
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.categories,
            isSelected: currentLocation == AppRoutes.categories,
            onTap: () {
              context.go(AppRoutes.categories);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.categorySVG,
            context: context,
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.donations,
            isSelected: currentLocation == AppRoutes.donations,
            onTap: () {
              context.go(AppRoutes.donations);
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.of(context).pop();
              }
            },
            svgIcon: ApplicationImages.donationSVG,
            context: context,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Theme.of(
                context,
              ).primaryTextTheme.bodyMedium!.color!.withValues(alpha: 0.2),
            ),
          ),
          drawerItem(
            title: AppLocalizations.of(context)!.logout,
            isSelected: false,
            onTap: () {
              context.go('/login');
            },
            svgIcon: ApplicationImages.logoutSVG,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget drawerItem({
    required String title,
    required void Function()? onTap,
    required String svgIcon,
    required BuildContext context,
    required bool isSelected,
  }) {
    return ListTile(
      leading: SvgPicture.asset(
        svgIcon,
        colorFilter: ColorFilter.mode(
          isSelected
              ? Theme.of(context).primaryColor
              : Theme.of(context).textTheme.bodyMedium!.color!,
          BlendMode.srcIn,
        ),
        height: 20,
        width: 20,
      ),
      selected: isSelected,
      title: Text(title),
      onTap: onTap,
    );
  }
}
