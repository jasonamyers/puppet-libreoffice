require 'spec_helper'

describe 'libreoffice' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_class('libreoffice')

    should contain_package('LibreOffice').with({
      :source   => 'http://download.documentfoundation.org/libreoffice/stable/4.0.3/mac/x86/LibreOffice_4.0.3_MacOS_x86.dmg',
      :provider => 'appdmg'
    })
  end
end
