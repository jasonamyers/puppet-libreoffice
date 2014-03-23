require 'spec_helper'

describe 'libreoffice' do

  version = '4.1.5'

  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_class('libreoffice')

    should contain_package("LibreOffice-#{version}").with({
      :source   => "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg",
      :provider => 'appdmg'
    })
  end
end
