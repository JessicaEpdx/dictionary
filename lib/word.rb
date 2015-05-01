class Word
  @@words = [ ]

  define_method(:initialize) do |word|
    @definitions = [ ]
    @word = word
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

  define_method(:get_word) do
    @word
  end


end
