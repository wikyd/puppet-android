# Public: Install Android Studio to /Applications
#
#
# Usage:
#
#     include android::studio
class android::studio($version = '133.1028713') {

  package { 'Android Studio':
    provider => 'appdmg',
    source   => "https://dl.google.com/android/studio/android-studio-bundle-${version}-mac.dmg",
  }
}
