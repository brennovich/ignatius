require 'spec_helper'

describe Ignatius::Generator do
  before do
    subject.destination_root = tmpdir.join("myBlog")
    capture(:stdout){ subject.invoke_all }
  end

  it_behaves_like :blog
end
