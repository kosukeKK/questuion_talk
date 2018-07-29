class AddColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :title, :string, null:false, limit: 140
    change_column :articles, :description, :string, null:false, limit: 255
    change_column :articles, :flg_under_18, :string, null:false
  end
end
