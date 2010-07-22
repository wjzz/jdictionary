class Word < ActiveRecord::Base
  CATEGORY = %w(noun u_verb ru_verb na_adjective i_adjective particle other)

  validates_inclusion_of :category, :in => CATEGORY

  def to_label
    "Word: #{japanese}"
  end

  def tag_list
    tags.split(/\s*,\s*/)
  end
end
