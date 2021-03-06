# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AgreementComponent do
  let(:form) { instance_double(ActionView::Helpers::FormBuilder, check_box: nil, label: nil) }

  it 'renders the component' do
    expect(render_inline(described_class.new(form: form)).to_html)
      .to include('<div class="form-check">')
  end
end
