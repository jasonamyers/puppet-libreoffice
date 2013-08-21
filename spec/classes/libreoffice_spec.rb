require 'spec_helper'

describe 'libreoffice' do
  it do
    should contain_class('libreoffice')

    should contain_package('LibreOffice').with({
      :source   => 'http://download.documentfoundation.org/libreoffice/stable/4.1.4/mac/x86/LibreOffice_4.1.4_MacOS_x86.dmg',
      :provider => 'appdmg'
    })
  end
end
