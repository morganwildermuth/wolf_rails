require 'spec_helper'

describe "wolves/new" do
  before(:each) do
    assign(:wolf, stub_model(Wolf,
      :name => "MyString",
      :age => 1,
      :gender => "MyString",
      :health => 1,
      :user => nil
    ).as_new_record)
  end

  it "renders new wolf form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", wolves_path, "post" do
      assert_select "input#wolf_name[name=?]", "wolf[name]"
      assert_select "input#wolf_age[name=?]", "wolf[age]"
      assert_select "input#wolf_gender[name=?]", "wolf[gender]"
      assert_select "input#wolf_health[name=?]", "wolf[health]"
      assert_select "input#wolf_user[name=?]", "wolf[user]"
    end
  end
end
