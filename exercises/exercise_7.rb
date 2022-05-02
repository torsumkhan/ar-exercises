require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "What is the store name?"
@StoreName = gets.chomp

newStore = Store.create(name: @Store.name)

if newStore.errors.messages
    newStore.errors.messages.each do |error_key, message|
        puts "Error: #{error_key} #{message.first}"
    end
end
