class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  after_destroy :ensure_an_admmin_remains

  private
    def ensure_an_admmin_remains
      if User.count.zero?
        raise "User can't be deleted, there must be at least one user registerd in the application."
      end
    end
end
