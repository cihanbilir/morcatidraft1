class CreateOptionIletisimeGecens < ActiveRecord::Migration
  def change
    create_table :option_iletisime_gecens do |t|
      t.string :deger
      t.references :form_bir, index: true

      t.timestamps
    end
  end
end
