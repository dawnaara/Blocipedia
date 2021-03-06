class ApplicationPolicy
  attr_reader :user, :wiki

  def initialize(user, wiki)
    raise Pundit::NotAuthorizedError, "must be logged in" unless user
    @user = user
    @wiki = wiki
  end

  def index?
    user.present?
  end

  def show?
    scope.where(:id => wiki.id).exists?
  end

  def create?
    user.present?
  end

  def new?
    user.present?
  end

  def update?
    user.present?
  end

  def edit?
    user.present?
  end

  def destroy?
    user.present?
  end

  def scope
    Pundit.policy_scope!(user, wiki.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
