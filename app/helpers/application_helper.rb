# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def japanese_show_column(record)
    "<span class=\"japanese\">#{h record.japanese}</span> [#{h record.reading}]"
  end

  def definition_show_column(record)
    "<span class=\"definition\">#{h record.definition}</span>"
  end

  def meanings_show_column(record)
    index = 0
    with_index = record.meanings.size > 1
    
    ms = record.meanings.map do |m|
      index += 1
      render_meaning(m, index, with_index)
    end

    ms.join ('<br />')
  end

  def render_meaning(meaning, index, use_index)
    eng = " [#{meaning.english}]" if meaning.english && !meaning.english.empty? 
    num = use_index ? "#{index}. " : ""

    "<h3>#{num}#{meaning.polish.capitalize}#{eng}</h3>" + 
    "#{render_sentences(meaning.sentences)}"
  end

  def render_sentences(sentences)
    if !sentences.nil? then
      sentences.gsub(/\n/,'<br />')
    end
  end
end
