require 'spec_helper'

describe Post do
  let(:user) {FactoryGirl.create(:user)}
  before { @post = user.posts.build(name: "Lorem ipsum", url: "http://www.url.com", description: "Post description")}

  subject {@post}

  it{should respond_to(:name)}
  it{should respond_to(:url)}
  it{should respond_to(:description)}
  it{should respond_to(:user_id)}
  its(:user) {should eq user}

  it{should be_valid}

  describe "when user id is not present" do
    before{@post.user_id = nil}
    it {should_not be_valid}
  end

  describe "when name is not present" do
    before{@post.name = nil}
    it {should_not be_valid}
  end

  describe "when url is not present" do
    before{@post.url = nil}
    it {should_not be_valid}
  end

  describe "when description is not present" do
    before{@post.description = nil}
    it {should_not be_valid}
  end

  describe "when description is too long" do
    before{@post.description = "a" * 61}
    it {should_not be_valid}
  end



end
