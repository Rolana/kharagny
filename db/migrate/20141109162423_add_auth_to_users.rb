class AddAuthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :auth_provider, :string
    add_column :users, :auth_uid, :string
    add_column :users, :auth_token, :text
    add_column :users, :auth_secret, :text
  end
end
