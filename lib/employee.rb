class Employee < ActiveRecord::Base
belongs_to :store
validates :first_name { minimum: 1 }
validates :last_name { minimum: 1 }
validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40 }
validates_presence_of :store_id
end
