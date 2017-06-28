require 'rails_helper'

RSpec.describe "shows/edit", type: :view do
  before(:each) do
    @show = assign(:show, Show.create!(
      :title => "MyString",
      :slug => "MyString",
      :description => "MyText",
      :venue_name => "MyString",
      :venue_url => "MyString",
      :venue_address => "MyString",
      :cover => "9.99",
      :cover_note => "MyString"
    ))
  end

  it "renders the edit show form" do
    render

    assert_select "form[action=?][method=?]", show_path(@show), "post" do

      assert_select "input[name=?]", "show[title]"

      assert_select "input[name=?]", "show[slug]"

      assert_select "textarea[name=?]", "show[description]"

      assert_select "input[name=?]", "show[venue_name]"

      assert_select "input[name=?]", "show[venue_url]"

      assert_select "input[name=?]", "show[venue_address]"

      assert_select "input[name=?]", "show[cover]"

      assert_select "input[name=?]", "show[cover_note]"
    end
  end
end
