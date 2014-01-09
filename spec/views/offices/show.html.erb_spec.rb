require 'spec_helper'

describe "offices/show" do
  before(:each) do
    @office = assign(:office, stub_model(Office,
      :name => "Name",
      :address => "Address",
      :date_creation => "Date Creation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/Date Creation/)
  end
end
