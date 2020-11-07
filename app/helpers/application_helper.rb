module ApplicationHelper
  def current_profile
    Profile.find_by user_id: current_user.id
  end

  def profile_by_id id
    Profile.find id
  end
end
