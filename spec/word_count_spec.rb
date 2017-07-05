require('rspec')
require('pry')
require('descriptive_statistics')
  require('word_count')

  describe('word_count') do
    it("returns the sentence input in slitted form showing the number of times each word appears") do
    expect("my dog is bitten by his dog".word_count()).to(eql("my"=>1,
     "dog"=>2, "is"=>1, "bitten"=>1, "by"=>1, "his"=>1))
    end
  end

  describe('search_string') do
    it("returns the number of times the input word apppears in a sentence") do
    expect("dog".search_string()).to(eql(2))
    end
  end