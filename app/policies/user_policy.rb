class UserPolicy < ApplicationPolicy
  class Scope < Scope

    def index?
      user.admin?
    end

    def show?
      record == user || user.admin?
    end

    def update?
      user.admin?
    end

    def destroy?
      user.admin?
    end
  end
end
