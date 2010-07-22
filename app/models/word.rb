class Word < ActiveRecord::Base
  CATEGORY = %w(noun u_verb ru_verb suru_verb na_adjective i_adjective particle idiom proverb yojijukugo other)

  validates_inclusion_of :category, :in => CATEGORY
  has_many :meanings

  def meaning
    meanings.map {|m| m.polish}.join
  end

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

  # returns a sorted list of all tags used throughout the model
  def Word.all_tags
    Word.all.map {|w| w.tag_list}.flatten.uniq.sort
  end
end
