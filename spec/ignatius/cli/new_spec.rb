require 'spec_helper'

describe Ignatius::Cli do
  context "while running new" do
    context "when all params are valid" do
      before do
        capture(:stdout) { Ignatius::Cli.start(["new", tmpdir.join("myBlog").to_s]) }
      end

      let(:myblog){ tmpdir.join("myBlog") }

      it "generate structure base to the engine" do
        expect(myblog).to be_derectory
      end

      it "exists with status 1 when no path is provided" do
        expect {
          capture(:stderr){ Ignatius::Cli.start(["new"]) }
        }.to exit_with_code(1)

        expect(File).to_not be_directory("myBlog")
      end
    end
  end
end
