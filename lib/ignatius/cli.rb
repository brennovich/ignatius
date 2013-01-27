# encoding: utf-8
module Ignatius
  class Cli < Thor

    desc 'new BLOG_PATH', 'Generate a new blog structure'
    def new(path)
      generator = Generator.new
      generator.destination_root = path
      generator.invoke_all
    end

    desc 'preview', 'Run the server to site preview'
    def preview
      `rake preview`
    end

  end
end
