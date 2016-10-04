class FormBir < ActiveRecord::Base
  belongs_to :basvuran
  belongs_to :gonullu
  belongs_to :user
  has_one :user
  has_one :gonullu
  has_one :option_destek_aliyor
end
