# typed: false
# frozen_string_literal: true

FactoryBot.define do
  factory :collection do
    name { 'MyString' }
    description { 'MyString' }
    contact_email { 'MyString' }
    release_option { 'MyString' }
    release_duration { 'MyString' }
    release_date { '2020-10-09' }
    visibility { 'MyString' }
    required_license { 'MyString' }
    default_license { 'MyString' }
    email_when_participants_changed { false }
    managers { 'maya.aguirre, jcairns' }
    reviewers { 'MyString' }
    depositors { 'MyString' }
  end
end