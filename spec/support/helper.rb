require 'pathname'

module SpecHelper
  @@tmpdir ||= Pathname.new("#{File.dirname(__FILE__)}/../../tmp")

  def tmpdir
    @@tmpdir
  end

  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval("$#{stream}").string
    ensure
      eval("$#{stream} = #{stream.upcase}")
    end

    result
  end
end
