# -*- encoding: utf-8 -*-
module Ignatius
  class Cli < Thor
    desc "Create BLOG_PATH", "generate a new blog structure"
    def new(path)
      generator = Generator.new
      generator.destination_root = path
      generator.invoke_all
    end
  end
end
