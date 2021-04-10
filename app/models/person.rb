class Person < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3}
  validates :age, numericality: { message: "% {value} seems wrong"}
  
  validates :username,
            uniqueness: {
                message: -> (object, data) do
                  "#{data[:value]} is already taken."
                end
            }
end
