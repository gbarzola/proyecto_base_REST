class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :id_producto
      t.text :descripcion_producto
      t.float :precio_producto
      t.integer :stockCrear

      t.timestamps null: false
    end
  end
end
