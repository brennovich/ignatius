require 'spec_helper'

describe Ignatius::PathHelper do
  describe '.root_path' do
    subject { described_class.root_path }

    it { expect(subject).to match(/_site\/index.html/) }
  end

  describe '.site_path' do
    subject { described_class.site_path file_name }

    context 'with a valid file name' do
      let(:file_name) { 'about.html' }

      it { expect(subject).to match(/_site\/about.html/) }
    end

    context 'with a invalid file name' do
      let(:file_name) { 'ç~é.html' }

      it { expect(subject).to match(/_site\/index.html/) }
    end
  end
end
