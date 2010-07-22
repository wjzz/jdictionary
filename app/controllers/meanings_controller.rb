class MeaningsController < ApplicationController
  active_scaffold :meaning do |config|
    config.columns[:polish].form_ui = :textarea
    config.columns[:polish].options = { :rows => 3, :cols => 80 }

    config.columns[:english].form_ui = :textarea
    config.columns[:english].options = { :rows => 3, :cols => 80 }

    config.columns[:sentences].options = { :rows => 10, :cols => 80 }

    config.columns = [:polish, :english, :sentences]
    config.subform.layout = :vertical

  end
end
