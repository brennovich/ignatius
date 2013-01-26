require 'spec_helper'

describe Ignatius::Cli do
  describe '.new' do
    context 'when all params are valid' do
      before do
        capture(:stdout) { Ignatius::Cli.start(['new', tmpdir.join('myBlog').to_s]) }
      end

      it_behaves_like :blog_generator
    end

    context 'when params are invalid' do
      subject { capture(:stderr) { Ignatius::Cli.start(['new']) } }

      it 'shows a warning message' do
        expect(subject).to eql("rspec new requires at least 1 argument: \"rspec new BLOG_PATH\".\n")
      end

      it 'does not create a site folder' do
        subject
        expect(File).to_not be_directory('myBlog')
      end
    end
  end
end
