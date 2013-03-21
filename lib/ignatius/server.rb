module Ignatius
  class StaticServer < Sinatra::Base
    get '/' do
      send_file ::Ignatius::PathHelper.root_path
    end

    get(/\.+/) do
      send_static_file(request.path) { 200 }
    end

    not_found do
      send_file(::Ignatius::PathHelper.site_path '404.html') { "Sorry, I cannot find #{request.path}" }
    end

    private

    def send_static_file(path, &missing_file_block)
      file_path = ::Ignatius::PathHelper.fallback_invalid_path(path)
      File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
    end
  end

  module PathHelper
    def self.root_path
      File.join($ROOT, '_site', 'index.html')
    end

    def self.site_path path_name
      fallback_invalid_path path_name
    end

    private

    def self.fallback_invalid_path(path_name, folder = '_site')
      path_name =~ /^[a-z]+/i ? File.join($ROOT, folder, path_name) : root_path
    end
  end
end
