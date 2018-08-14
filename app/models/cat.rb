# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string
#  name        :string
#  sex         :string(1)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'date'

class Cat < ApplicationRecord
validates :color, inclusion: { in: %w(brown black white gray orange),
  message: "%{value} is not a valid color" }
validates :sex, inclusion: {in: %w(M F), message: "%{value} is not a valid sex"}

# def initialize(birth_date)
#   @birth_date = birth_date
# end

# def age
#   now = DateTime.now
#   now.strftime("%d/%m/%Y %H:%M")
#   birth_date.strftime("%d/%m/%Y %H:%M")
#   now - birth_date
# end





end
