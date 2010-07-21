class Word < ActiveRecord::Base
  acts_as_taggable

  CATEGORY = %w(noun u_verb ru_verb na_adjective i_adjective particle other)

  validates_inclusion_of :category, :in => CATEGORY
end
