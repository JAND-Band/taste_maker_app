require 'rails_helper'

RSpec.describe "tastes/edit", :type => :view do
  before(:each) do
    @taste = assign(:taste, Taste.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit taste form" do
    render

    assert_select "form[action=?][method=?]", taste_path(@taste), "post" do

      assert_select "input#taste_name[name=?]", "taste[name]"
    end
  end
end
