class Basvuran < ActiveRecord::Base
  belongs_to :gonullu
  belongs_to :user
  has_one :form_bir
  validates_formatting_of :telefon, using: :us_phone
end
