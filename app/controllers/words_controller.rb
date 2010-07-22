class WordsController < ApplicationController
  active_scaffold :word do |config|
    # always show the new word form (useful while configuring the form)
    config.list.always_show_create = false


    # The order in the form
    config.columns = [:japanese, :reading, :definition, :category, :comments, :meanings, :tags]


    #--------------------#
    # List configuration #
    #--------------------#

    # Fields listed in the main list
    config.list.columns = [:japanese, :reading, :meaning, :category, :tags, ]

    config.list.per_page = 50


    ## Show configuration
    config.show.columns = [:japanese, :definition, :category, :comments, :tags, :meanings]


    #-----------------------#
    # Search options        #
    #-----------------------#

    # Enable field search
    config.actions.swap :search, :field_search
    config.list.always_show_search = true

    # Searchable fields
    config.field_search.columns = [:japanese, :reading, :definition, :tags, :comments, :category]
    config.columns[:category].search_ui = :string
    
    
#    config.columns[:tags].search_ui = :select
#    config.columns[:tags].options = Word.all_tags



    #----------------------#
    # Field configurations #
    #----------------------#

    config.columns[:definition].options = { :rows => 10, :cols => 80 }
    config.columns[:comments].options = { :rows => 4, :cols => 80 } 
    config.columns[:category].form_ui = :select
    config.columns[:category].options = { :options => (Word::CATEGORY).map {|l| [l,l]} }
    
    #config.columns[:reading].inplace_edit = :ajax
    #config.search.live = true
    
  end
end
