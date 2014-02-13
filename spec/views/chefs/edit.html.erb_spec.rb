require 'spec_helper'

describe "chefs/edit" do
  before(:each) do
    @chef = assign(:chef, stub_model(Chef,
      :name => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders the edit chef form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chef_path(@chef), "post" do
      assert_select "input#chef_name[name=?]", "chef[name]"
      assert_select "input#chef_image_url[name=?]", "chef[image_url]"
    end
  end
end
