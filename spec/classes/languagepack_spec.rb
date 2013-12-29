require 'spec_helper'

describe 'libreoffice::languagepack' do
  it do
    should contain_class('libreoffice::languagepack')
  end

  context "default language" do
    it do
      should contain_package('LibreOffice LanguagePack').with({
       :source   => 'http://download.documentfoundation.org/libreoffice/stable/4.1.4/mac/x86/LibreOffice_4.1.4_MacOS_x86_langpack_de.dmg',
       :provider => 'appdmg'
      })
    end
  end

  context "other language" do
    let(:params) do
      {
        :locale => 'en-GB'
      }
    end

    it do
      should contain_package('LibreOffice LanguagePack').with({
        :source   => 'http://download.documentfoundation.org/libreoffice/stable/4.1.4/mac/x86/LibreOffice_4.1.4_MacOS_x86_langpack_en-GB.dmg',
        :provider => 'appdmg'
      })
    end
  end
end
