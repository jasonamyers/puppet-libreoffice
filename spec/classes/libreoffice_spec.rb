require 'spec_helper'

describe 'libreoffice' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_package('libreoffice').with({
      :source   => 'http://download.documentfoundation.org/libreoffice/stable/4.0.1/mac/x86/LibreOffice_4.0.1_MacOS_x86.dmg',
      :provider => 'appdmg'
    })
  end
end
