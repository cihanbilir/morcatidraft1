class CreateFormBirs < ActiveRecord::Migration
  def change
    create_table :form_birs do |t|
      t.references :basvuran, index: true
      t.date :ilk_basvuru_tarihi
      t.text :notlar
      t.boolean :mc_siginaginda_kaliyor
      t.references :gonullu, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
