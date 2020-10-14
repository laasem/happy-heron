# typed: true
# frozen_string_literal: true

class DescriptionComponent < ApplicationComponent
  def initialize(form:)
    @form = form
  end

  attr_reader :form
end
