class AddPictureurlToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :pictureurl, :string
  end
end
