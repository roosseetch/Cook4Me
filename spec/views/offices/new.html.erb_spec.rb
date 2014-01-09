require 'spec_helper'

describe "offices/new" do
  before(:each) do
    assign(:office, stub_model(Office,
      :name => "MyString",
      :address => "MyString",
      :date_creation => "MyString"
    ).as_new_record)
  end

  it "renders new office form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", offices_path, "post" do
      assert_select "input#office_name[name=?]", "office[name]"
      assert_select "input#office_address[name=?]", "office[address]"
      assert_select "input#office_date_creation[name=?]", "office[date_creation]"
    end
  end
end
