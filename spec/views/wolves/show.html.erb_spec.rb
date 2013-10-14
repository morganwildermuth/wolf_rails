require 'spec_helper'

describe "wolves/show" do
  before(:each) do
    @wolf = assign(:wolf, stub_model(Wolf,
      :name => "Name",
      :age => 1,
      :gender => "Gender",
      :health => 2,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Gender/)
    rendered.should match(/2/)
    rendered.should match(//)
  end
end
