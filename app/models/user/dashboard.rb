class User::Dashboard
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def studios
    user.owned_studios
  end
end
