require('rspec')
require('word')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end

  describe('.clear') do
    it("is empty at first") do
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a definition") do
      definition = Definition.new("a saucy hamburger")
      definition.save()
      expect(Definition.all()).to(eq([definition]))
    end
  end

  describe('.all') do
    it("shows all definitions") do
      definition = Definition.new("a cheesy pizza")
      definition.save()
      expect(Definition.all()).to(eq([definition]))
    end
  end

end
