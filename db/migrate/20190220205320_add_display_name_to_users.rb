class AddDisplayNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :display_name, :string, null: false
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :joinstartup, :boolean, default: false
    add_column :users, :hasstartup, :boolean, default: true
    add_column :users, :org, :string
    add_column :users, :skills, :text
    add_column :users, :seeking, :text
    DbTextSearch::CaseInsensitive.add_index connection, :users, :display_name,
                                            unique: true
  end
end
