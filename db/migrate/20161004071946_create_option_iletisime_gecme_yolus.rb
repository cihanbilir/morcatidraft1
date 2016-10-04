class CreateOptionIletisimeGecmeYolus < ActiveRecord::Migration
  def change
    create_table :option_iletisime_gecme_yolus do |t|
      t.string :deger
      t.references :form_bir, index: true

      t.timestamps
    end
  end
end
