# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcome page' do
  let(:user) { create(:user) }

  context 'when authenticated' do
    before do
      sign_in user
    end

    it 'displays logout link' do
      visit '/'
      expect(page).to have_link('Logout')
    end
  end

  context 'when unauthenticated' do
    before do
      sign_out
    end

    it 'displays login link' do
      visit '/'
      expect(page).to have_link('Login')
    end
  end
end
