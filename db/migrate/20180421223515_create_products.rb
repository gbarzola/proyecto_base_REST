class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :descripcion_producto
      t.float :precio_producto
      t.integer :stockCrear

      t.timestamps null: false
    end
  end
end
