class User < ApplicationRecord
  validates :name, presence: true
  
  after_initialize do |user|
    puts 'You have initialized object'
  end

  after_touch do |user|
    puts "You have touched an object"
  end
  
  after_find do |user|
    puts 'You have found an object'
  end
end
