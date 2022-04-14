require 'rails_helper'

RSpec.describe "Schedules", type: :request do
  let!(:schedule) { create(:schedule) }

  describe "GET /schedules" do
    it "index 正常なレスポンスが返ってくる事" do
      get schedules_path
      expect(response).to have_http_status(200)
    end

    it '取得出来ている事' do
      expect(Schedule.first).to eq schedule
    end

    it "データが正しく表示されている事" do
      get schedules_path
      expect(response.body).to include schedule.title
    end
  end
end
