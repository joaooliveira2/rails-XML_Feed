class CreateFieldsSelects < ActiveRecord::Migration[7.0]
  def change
    create_table :fields_selects do |t|

      t.timestamps
    end
  end
end
