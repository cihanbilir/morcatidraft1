class Basvuran < ActiveRecord::Base
  belongs_to :gonullu
  belongs_to :user
  has_one :form_bir
end
