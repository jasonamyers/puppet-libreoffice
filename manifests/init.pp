# Public: Install Libreoffice.app into /Applications.
#
# Examples
#
#   include libreoffice
class libreoffice {
  package { 'LibreOffice':
    provider => 'appdmg',
    source   => 'http://download.documentfoundation.org/libreoffice/stable/4.1.0/mac/x86/LibreOffice_4.1.0_MacOS_x86.dmg'
  }
}
