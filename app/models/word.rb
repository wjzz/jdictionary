class Word < ActiveRecord::Base
  CATEGORY = %w(noun u_verb ru_verb suru_verb na_adjective i_adjective particle other)

  validates_inclusion_of :category, :in => CATEGORY
  has_many :meanings

  def to_label
    "Word: #{japanese}"
  end

  def tag_list
    if tags.nil?
      []
    else
      tags.split(/\s*,\s*/)
    end
  end
end
