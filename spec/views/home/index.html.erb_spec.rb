require "rails_helper"

RSpec.describe "home/index.html.erb", type: :view do
  describe "GET /" do
    let(:user) { create(:user) }

    before do
      allow(view).to receive(:current_user).and_return(user)
    end

    it "displays the welcome message" do
      render
      expect(rendered).to include("Get started")
    end
  end
end
