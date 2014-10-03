require 'rails_helper'

RSpec.describe "tastes/index", :type => :view do
  before(:each) do
    assign(:tastes, [
      Taste.create!(
        :name => "Name"
      ),
      Taste.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of tastes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
