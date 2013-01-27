module Ignatius
  class Generator < Thor::Group
    include Thor::Actions

    desc 'Generate a new blog structure'

    def self.source_root
      File.dirname(__FILE__) + '/templates'
    end

    def create_directories
      empty_directory '_includes'
      empty_directory '_layouts'
      empty_directory '_site'
      empty_directory 'posts'
    end

    def create_git_files
      create_file '.gitignore' do
        ''
      end
    end

    def copy_jekyll_files
      copy_file 'jekyll/index.html', 'index.html'
      copy_file 'jekyll/_config.yml', '_config.yml'
    end

    def copy_sinatra_file
      copy_file 'sinatra/config.ru', 'config.ru'
    end

    def copy_guardfile
      copy_file 'Guardfile', 'Guardfile'
    end

    def copy_rakefile
      copy_file 'Rakefile', 'Rakefile'
    end
  end
end
