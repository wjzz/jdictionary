class WordsController < ApplicationController
  active_scaffold :word do |config|
    # always show the new word form (useful while configuring the form)
    config.list.always_show_create = true
    
    # The order in the form
    config.columns = [:japanese, :reading, :definition, :category, :tag_list, :comments]

    # Fields listed in the main list
    config.list.columns = [:japanese, :reading, :definition, :tag_list]

    ## Field configurations
    # Definition textarea size
    config.columns[:definition].options = { :rows => 10, :cols => 80 }

    # Comments textarea size
    config.columns[:comments].options = { :rows => 4, :cols => 80 } 

    # Category options
    config.columns[:category].form_ui = :select
    config.columns[:category].options = { :options => (Word::CATEGORY).map {|l| [l,l]} }
    
  end
end
