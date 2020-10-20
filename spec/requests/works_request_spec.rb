# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Works', type: :request do
  let(:user) { create(:user) }
  let(:collection) { create(:collection) }

  before do
    sign_in user
  end

  context 'when Settings.allow_sdr_content_changes is' do
    context 'false' do
      before do
        allow(Settings).to receive(:allow_sdr_content_changes).and_return(false)
      end

      it 'redirects and displays alert' do
        get "/collections/#{collection.id}/works/new"
        expect(response).to redirect_to(:root)
        follow_redirect!
        expect(response).to be_successful
        expect(response.body).to include 'Creating/Updating SDR content (i.e. collections or works) is not yet available.'
      end
    end

    context 'true' do
      before do
        allow(Settings).to receive(:allow_sdr_content_changes).and_return(true)
      end

      it 'does NOT display alert' do
        get "/collections/#{collection.id}/works/new"
        expect(response).to be_successful
        expect(response.body).not_to include 'Creating/Updating SDR content (i.e. collections or works) is not yet available.'
      end
    end
  end
end
