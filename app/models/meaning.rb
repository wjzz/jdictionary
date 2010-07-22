class Meaning < ActiveRecord::Base
  CATEGORY = %w(idiom word_meaning)
  
  validates_inclusion_of :category, :in => CATEGORY
  belongs_to :word
end
