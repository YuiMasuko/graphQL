module ExamblogsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_examblogs_path
    elsif action_name == 'edit'
      examblog_path
    end
  end
end
