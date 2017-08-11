module CurrentUserConcern
  extend ActiveSupport::Concern
  #override the current_user method
  #NULL OBJECT PATTERN for creating guest user
  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                  first_name: "Guest",
                  last_name: "User",
                  email: "test333@test.ca"
                  )
  end
end
