class RemoveColunmFromComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :post_id, :string
  end
end
