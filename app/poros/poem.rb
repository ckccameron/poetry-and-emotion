class Poem
  attr_reader :title,
              :author,
              :poem_string

  def initialize(poem_info)
    @title = poem_info[:title]
    @author = poem_info[:author]
    @poem_string = poem_info[:lines].join("\n")
  end
end
