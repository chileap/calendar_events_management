require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :view do
  it "displays the welcome message" do
    render
    expect(rendered).to include("Get started")
  end
end
