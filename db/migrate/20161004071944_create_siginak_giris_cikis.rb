class CreateSiginakGirisCikis < ActiveRecord::Migration
  def change
    create_table :siginak_giris_cikis do |t|
      t.date :giris
      t.date :cikis
      t.references :form_bir, index: true

      t.timestamps
    end
  end
end
