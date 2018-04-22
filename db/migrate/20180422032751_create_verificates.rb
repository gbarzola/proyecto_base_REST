class CreateVerificates < ActiveRecord::Migration
  def change
    create_table :verificates do |t|

      t.timestamps null: false
    end
  end
end
