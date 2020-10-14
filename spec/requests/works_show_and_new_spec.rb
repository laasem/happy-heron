# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Works requests' do
  let(:user) { create(:user) }

  before do
    sign_in user
  end

  describe 'show a work' do
    let(:work) { create(:work) }

    it 'displays the work' do
      get "/works/#{work.id}"
      expect(response).to have_http_status(:success)
      expect(response).to render_template('works/show')
    end
  end

  describe 'new work form' do
    let(:collection) { create(:collection) }

    it 'redirects to work show page' do
      get "/collections/#{collection.id}/works/new"
      expect(response).to have_http_status(:success)
      expect(response).to render_template('works/new')
    end
  end
end
