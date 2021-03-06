# typed: false
# frozen_string_literal: true

# Authorization policy for Collection objects
class CollectionPolicy < ApplicationPolicy
  relation_scope do |relation|
    relation.where(creator: user)
  end

  # allow everyone to create collections
  def create?
    true
  end
end
