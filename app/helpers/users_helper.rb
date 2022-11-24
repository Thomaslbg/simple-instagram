module UsersHelper


  def can_edit?(profile_id)
    current_user.id == profile_id
  end

  def post_last_comment(post_id)
    all_comments(post_id).last if all_comments(post_id).exists?
  end

  def all_comments(post_id)
    Comment.where(post_id: post_id)
  end
end
