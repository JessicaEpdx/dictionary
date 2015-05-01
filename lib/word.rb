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

  define_singleton_method(:find) do |name|
    found_word = nil
    @@words.each() do |word|
      if @word = name
        found_word = word
      end
    end
    found_word
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:get_definitions) do
    @definitions
  end

  define_method(:get_word) do
    @word
  end


end
