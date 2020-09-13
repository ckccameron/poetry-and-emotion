require 'rails_helper'

RSpec.describe SearchFacade do
  it "returns first ten poem results for a given author name" do
    author_name = "Emily"

    results = SearchFacade.author_name_first_ten_poem_results(author_name)

    expect(results).to be_a(Array)
    expect(results.first).to be_a(Poem)
    expect(results.last).to be_a(Poem)
    expect(results.size).to eq(10)
    expect(results.first.title).to be_a(String)
    expect(results.first.author).to be_a(String)
    expect(results.first.poem_string).to be_a(String)
  end
end
