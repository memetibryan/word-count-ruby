require('rspec')
require('pry')
require('descriptive_statistics')
  require('word_count')

  describe('word_count') do
    it("returns the number of times a word apppears in a sentence") do
    expect("my dog is bitten by his dog".word_count()).to(eql("my"=>1, "dog"=>2, "is"=>1, "bitten"=>1, "by"=>1, "his"=>1))
    end
  end