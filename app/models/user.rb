class User < ApplicationRecord

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.access_token = auth['credentials']['token']
    end
  end
end
