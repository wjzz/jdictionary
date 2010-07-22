class MeaningsController < ApplicationController
  active_scaffold :meaning do |config|
    config.columns[:category].form_ui = :select
    config.columns[:category].options = { :options => Meaning::CATEGORY.map {|t| [t,t] } }

    config.columns[:text].form_ui = :textarea
    config.columns[:text].options = { :rows => 5, :cols => 80 }

    config.columns = [:category, :expression, :text, :english]

  end
end
