# Public: Install Libreoffice.app into /Applications.
#
# Examples
#
#   include libreoffice::languagepack
#
#   or
#
#   class { 'libreoffice::languagepack':
#     locale => 'de',
#   }
class libreoffice::languagepack ($locale = 'de') {
  package { 'LibreOffice LanguagePack':
    provider => 'appdmg',
    source   => "http://download.documentfoundation.org/libreoffice/stable/4.1.1/mac/x86/LibreOffice_4.1.1_MacOS_x86_langpack_${locale}.dmg",
  }
}
