require 'rails_helper'

RSpec.describe Poem do
  it "exists with attributes" do
    poem_info = {
      title: "Defrauded I a Butterfly --",
      author: "Emily Dickinson",
      lines: [
            "Defrauded I a Butterfly --",
            "The lawful Heir -- for Thee --"
          ]
    }

    poem = Poem.new(poem_info)

    expect(poem.title).to eq("Defrauded I a Butterfly --")
    expect(poem.author).to eq("Emily Dickinson")
    expect(poem.poem_string).to eq("Defrauded I a Butterfly --\nThe lawful Heir -- for Thee --")
  end
end
