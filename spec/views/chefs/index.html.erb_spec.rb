require 'spec_helper'

describe "chefs/index" do
  before(:each) do
    assign(:chefs, [
      stub_model(Chef,
        :name => "Name",
        :image_url => "Image Url"
      ),
      stub_model(Chef,
        :name => "Name",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of chefs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
