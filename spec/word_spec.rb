require('rspec')
require('word')
require('definition')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('.clear') do
    it("is empty at first") do
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a word to word class") do
      word1 = Word.new("puppy")
      word1.save()
      expect(Word.all()).to(eq([word1]))
    end
  end

  describe('.all') do
    it("shows all words") do
      word1 = Word.new("kitten")
      word1.save()
      expect(Word.all()).to(eq([word1]))
    end
  end

  describe('#get_word') do
    it("gets string input from word object") do
      word = Word.new("deer")
      word.save()
      expect(word.get_word).to(eq("deer"))
    end
  end

  describe('#add_definition') do
    it("adds a definition to word") do
    word1 = Word.new("panda")
    word1.save()
    definition1 = Definition.new("The cutest thing ever.")
    definition1.save()
    word1.add_definition(definition1)
    expect(word1.get_definition()).to(eq([definition1]))
  end
end

end
