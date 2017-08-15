module CurrentUserConcern
  extend ActiveSupport::Concern
  #override the current_user method
  #NULL OBJECT PATTERN for creating guest user
  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@exaample.com"
    #last item returned 
    guest
  end
end
