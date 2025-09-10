import 'package:flutter/material.dart';
import 'package:portfolio/core/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/desktop_sidebar.dart';

class PersonalSidebar extends StatelessWidget {
  final bool isMobile;

  const PersonalSidebar({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Container();
    } else {
      return DesktopSidebar();
    }
  }

  Widget _buildMobileSidebar(BuildContext context, personalInfo) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // Avatar
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(personalInfo.avatarUrl),
          ),
          const SizedBox(width: 16),
          // Name and Title
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  personalInfo.fullName,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  personalInfo.professionalTitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          // Social Links
          Row(
            children: personalInfo.socialLinks.take(2).map<Widget>((link) {
              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: IconButton(
                  onPressed: () => _launchUrl(link.url),
                  icon: _getSocialIcon(link.icon),
                  iconSize: 20,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Icon _getSocialIcon(String iconName) {
    switch (iconName.toLowerCase()) {
      case 'linkedin':
        return const Icon(Icons.work);
      case 'github':
        return const Icon(Icons.code);
      case 'twitter':
        return const Icon(Icons.alternate_email);
      default:
        return const Icon(Icons.link);
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
