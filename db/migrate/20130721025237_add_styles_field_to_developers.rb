class AddStylesFieldToDevelopers < ActiveRecord::Migration
  def change
    add_column :developers, :styles, :text
  end
end
