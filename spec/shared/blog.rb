require 'spec_helper'

shared_examples_for :blog_generator, :shared => true do
  let(:myblog) { tmpdir.join('myBlog') }

  describe 'generate' do
    context 'ignatius' do
      context 'files' do
        %w(config.ru Guardfile Rakefile).each do |file_name|
          it "creates #{file_name}" do
            expect(myblog.join file_name).to be_file
          end
        end
      end

      context 'folders' do
        it 'creates myBlog' do
          expect(myblog).to be_directory
        end
      end
    end

    context 'jekyll' do
      context 'files' do
        %w(index.html _config.yml).each do |file_name|
          it "creates #{file_name}" do
            expect(myblog.join file_name).to be_file
          end
        end
      end

      context 'folders' do
        %w(posts _includes _site _layouts).each do |directory_name|
          it "creates #{directory_name}" do
            expect(myblog.join directory_name).to be_directory
          end
        end
      end
    end
  end
end
