class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string    :email,               :null => false
      t.string    :crypted_password,    :null => false
      t.string    :password_salt,       :null => false
      t.string    :persistence_token,   :null => false
      t.string    :single_access_token, :null => false                # optional, see Authlogic::Session::Params

      # magic fields (all optional, see Authlogic::Session::MagicColumns)
      t.string    :current_login_ip
      t.string    :last_login_ip
      t.timestamps
    end

    add_index :users, ["email"], :name => "index_users_on_email", :unique => true
    add_index :users, ["persistence_token"], :name => "index_users_on_persistence_token", :unique => true

  end

  def self.down
    drop_table :users
  end
end
