require 'spec_helper'

describe "wolves/index" do
  before(:each) do
    assign(:wolves, [
      stub_model(Wolf,
        :name => "Name",
        :age => 1,
        :gender => "Gender",
        :health => 2,
        :user => nil
      ),
      stub_model(Wolf,
        :name => "Name",
        :age => 1,
        :gender => "Gender",
        :health => 2,
        :user => nil
      )
    ])
  end

  it "renders a list of wolves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
