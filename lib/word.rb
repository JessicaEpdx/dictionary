class Word
  attr_reader(:word, :defintion)
  @@words = [ ]

  define_method(:initialize) do |attributes|
    @definitions = [ ]
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:get_definition) do
    @definitions
  end

end
