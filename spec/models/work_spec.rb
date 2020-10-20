# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Work do
  subject(:work) { create(:work, :with_contributors, :with_related_links, :with_related_works, :with_attached_file) }

  it 'belongs to a collection' do
    expect(work.collection).to be_a(Collection)
  end

  it 'has many contributors' do
    expect(work.contributors).to all(be_a(Contributor))
  end

  it 'has many related links' do
    expect(work.related_links).to all(be_a(RelatedLink))
  end

  it 'has many related works' do
    expect(work.related_works).to all(be_a(RelatedWork))
  end

  it 'has attached files' do
    expect(work.files).to be_attached
  end

  describe 'access field' do
    it 'defaults to world' do
      expect(work.access).to eq('world')
    end

    context 'with value present in enum' do
      let(:access) { 'stanford' }

      it 'is valid' do
        work.update(access: access)
        expect(work).to be_valid
      end
    end

    context 'with value absent from enum' do
      let(:access) { 'rutgers' }

      it 'raises ArgumentError' do
        expect { work.update(access: access) }.to raise_error(ArgumentError, /'#{access}' is not a valid access/)
      end
    end
  end

  describe 'state machine flow' do
    it 'starts in first draft' do
      expect(work.state).to eq('first_draft')
    end

    context 'with deposit event' do
      before do
        work.deposit!
      end

      it 'transitions to deposited' do
        expect(work.state).to eq('deposited')
      end
    end

    context 'with new version event' do
      before do
        work.deposit!
        work.new_version!
      end

      it 'transitions to version draft' do
        expect(work.state).to eq('version_draft')
      end
    end
  end
end
