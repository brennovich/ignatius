module Ignatius
  class StaticServer < Sinatra::Base
    get(/.+/) do
      send_static_file(request.path) {404}
    end

    not_found do
      send_static_file('404.html') {"Sorry, I cannot find #{request.apth}"}
    end

    def send_static_file(path, &missing_file_block)
      file_path = File.join($ROOT, '_site', path)
      file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i
      File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
    end
  end
end
