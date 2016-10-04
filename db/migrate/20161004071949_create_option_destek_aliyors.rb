class CreateOptionDestekAliyors < ActiveRecord::Migration
  def change
    create_table :option_destek_aliyors do |t|
      t.references :form_bir, index: true

      t.timestamps
    end
  end
end
