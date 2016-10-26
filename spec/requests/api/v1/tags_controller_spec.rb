require 'rails_helper'

describe Api::V1::TagsController, type: :request do
  describe "GET #index" do
    it "returns all tags" do
      tag1 = create(:tag, name: "bouldering")
      tag2 = create(:tag, name: "trad")

      get '/api/v1/tags'
      
      expect(response.status).to eq 200
      content = JSON.parse(response.body)
    
      expect(content.count).to eq 2
      expect(content.first['name']).to eq "bouldering"
      expect(content.second['name']).to eq "trad"
    end
  end
end
