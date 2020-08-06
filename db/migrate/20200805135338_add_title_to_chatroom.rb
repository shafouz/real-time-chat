class AddTitleToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :title, :string
  end
end
