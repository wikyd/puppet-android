# Installs a android build_tools
#
# Usage:
#
#     android::build_tools { 'build-tools-18.1.1': }
define android::build_tools(
  $ensure    = present,
  $version   = $name
) {
  $version_number = regsubst($version, 'build-tools-', '')

  android::definition{ $name:
    ensure    => $ensure,
    dest_path => "build-tools/${version_number}",
  }
}
