require 'spec_helper'

describe "chefs/new" do
  before(:each) do
    assign(:chef, stub_model(Chef,
      :name => "MyString",
      :image_url => "MyString"
    ).as_new_record)
  end

  it "renders new chef form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chefs_path, "post" do
      assert_select "input#chef_name[name=?]", "chef[name]"
      assert_select "input#chef_image_url[name=?]", "chef[image_url]"
    end
  end
end
