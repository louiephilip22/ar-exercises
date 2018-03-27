class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :mens_apparel, inclusion: { in: [true, false] }
  validates :womens_apparel, inclusion: { in: [true, false] }

  validate :apparel_must_carry_at_least_one

  def apparel_must_carry_at_least_one
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "mens_apparel and womens_apparel can not be both false")
      errors.add(:womens_apparel, "mens_apparel and womens_apparel can not be both false")
    end
  end

end