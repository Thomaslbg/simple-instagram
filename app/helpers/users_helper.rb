module UsersHelper


  def can_edit?(profile_id)
    current_user.id == profile_id
  end
end
