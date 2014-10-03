require 'rails_helper'

RSpec.describe "tastes/new", :type => :view do
  before(:each) do
    assign(:taste, Taste.new(
      :name => "MyString"
    ))
  end

  it "renders new taste form" do
    render

    assert_select "form[action=?][method=?]", tastes_path, "post" do

      assert_select "input#taste_name[name=?]", "taste[name]"
    end
  end
end
