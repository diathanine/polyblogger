module ApplicationHelper
  def current_profile
    Profile.find_by user_id: current_user.id
  end
end
