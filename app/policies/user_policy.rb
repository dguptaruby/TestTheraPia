# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  def index?
    user.is_admin? || user.is_manager? || user.is_normal?
  end

  def new?
    user.is_admin? || user.is_manager?
  end

  def create?
    user.is_admin? || user.is_manager?
  end

  def edit?
    user.is_admin? || user.is_manager?
  end

  def update?
    user.is_admin? || user.is_manager?
  end

  def destroy?
    user.is_admin? || user.is_manager?
  end
end
