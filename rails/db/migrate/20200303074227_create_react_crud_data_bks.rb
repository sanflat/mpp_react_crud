class CreateReactCrudDataBks < ActiveRecord::Migration[6.0]
  def change
    create_table :react_crud_data_bks do |t|
      t.string :name, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
