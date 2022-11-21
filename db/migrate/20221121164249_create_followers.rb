class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.references :follow_user, references: :users
      t.references :following_user, references: :users

      t.timestamps
    end
    # add_foreign_key :followers, :users, column: :follow_user_id
    # add_foreign_key :followers, :users, column: :following_user_id
  end
end
