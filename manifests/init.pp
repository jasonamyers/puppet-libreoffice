# Public: Install Libreoffice.app into /Applications.
#
# Examples
#
#   include libreoffice
class libreoffice {
  package { 'libreoffice':
    provider => 'appdmg',
    source => 'http://download.documentfoundation.org/libreoffice/stable/4.0.2/mac/x86/LibreOffice_4.0.2_MacOS_x86.dmg' 
  }
}
