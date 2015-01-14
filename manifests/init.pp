# Public: Install Libreoffice.app into /Applications.
#
# Examples
#
#   include libreoffice
#   class { 'libreoffice':
#     version => '4.3.4',
#   }
class libreoffice($version='4.3.5') {
  package { "LibreOffice-${version}":
    provider => 'appdmg',
    source   => "http://download.documentfoundation.org/libreoffice/stable/${version}/mac/x86_64/LibreOffice_${version}_MacOS_x86-64.dmg",
  }
}
