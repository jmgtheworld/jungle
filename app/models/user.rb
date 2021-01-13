class User < ActiveRecord::Base
  has_secure_password

  def authenticate_with_credentials(email, password)
    if has_secure_password
      user = User.new(email.lstrip.downcase, password)
    end

  end

end
