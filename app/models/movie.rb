class Movie < ActiveRecord::Base
validates :title, presence: true
validates :year, 
  presence: true,
  inclusion: { in: 1900..Date.today.year },
  format: { 
    with: /(19|20)\d{2}/i, 
    message: "should be a four-digit year"
  }
  validates :rating, presence: true, inclusion: 0..10
  validates :description, presence: true
end
