# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DatesComponent do
  let(:form) { instance_double(ActionView::Helpers::FormBuilder, label: nil, text_field: nil) }

  it 'renders the component' do
    expect(render_inline(described_class.new(form: form)).to_html)
      .to include('Date content was created')
  end
end
