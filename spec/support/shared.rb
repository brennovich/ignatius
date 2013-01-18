shared_examples_for :blog do
  let(:myblog){ tmpdir.join("myBlog") }

  it "generate blog folder" do
    expect(myblog).to be_directory
  end

  it "create Guardfile" do
    expect(myblog.join('Guardfile')).to be_file
  end

  it "create Rakefile" do
    expect(myblog.join('Rakefile')).to be_file
  end

  context "generated files to jekyll" do
    it "#create file '_config.yml'" do
      expect(myblog.join('_config.yml')).to be_file
    end

    it "#create file 'index.html'" do
      expect(myblog.join('index.html')).to be_file
    end

    it "#create folder '_includes'" do
      expect(myblog.join('_includes')).to be_directory
    end

    it "#create folder '_layouts'" do
      expect(myblog.join('_layouts')).to be_directory
    end

    it "#create folder '_site'" do
      expect(myblog.join('_site')).to be_directory
    end

    it "#create folder 'posts'" do
      expect(myblog.join('posts')).to be_directory
    end
  end

  context "create Sinatra server" do
    it "#create 'config.ru' file" do
      expect(myblog.join('config.ru')).to be_file
    end
  end

end
