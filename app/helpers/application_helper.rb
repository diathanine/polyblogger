module ApplicationHelper
  def current_profile
    if current_user
      Profile.find_by user_id: current_user.id
    else
      nil
    end
  end

  def profile_by_id id
    Profile.find id
  end
end
