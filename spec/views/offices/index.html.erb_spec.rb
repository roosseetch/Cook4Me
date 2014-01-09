require 'spec_helper'

describe "offices/index" do
  before(:each) do
    assign(:offices, [
      stub_model(Office,
        :name => "Name",
        :address => "Address",
        :date_creation => "Date Creation"
      ),
      stub_model(Office,
        :name => "Name",
        :address => "Address",
        :date_creation => "Date Creation"
      )
    ])
  end

  it "renders a list of offices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Date Creation".to_s, :count => 2
  end
end
