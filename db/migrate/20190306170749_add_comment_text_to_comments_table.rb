class AddCommentTextToCommentsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :comment_text, :string
    add_column :comments, :comment_title, :string
  end
end
