class AddAreaToUser < ActiveRecord::Migration
  def change
    add_column :users, :area, :text, :prefecture_code
  end
end
