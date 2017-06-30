require('rspec')
require('pry')
require('descriptive_statistics')
  require('word_count')

  describe('word_count') do
    it("returns the number of times a word apppears in a sentence") do
    expect("bryan is the son of bryan".word_count()).==(2)
    end
  end