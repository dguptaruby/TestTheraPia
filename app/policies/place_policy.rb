# frozen_string_literal: true

class PlacePolicy < ApplicationPolicy
  def index?
    user.is_admin?
  end

  def new?
    user.is_admin?
  end

  def create?
    user.is_admin?
  end

  def edit?
    user.is_admin?
  end

  def update?
    user.is_admin?
  end

  def destroy?
    user.is_admin?
    endd
  end
end
