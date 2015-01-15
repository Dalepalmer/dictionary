class Word

  @@all_terms = []

  define_method(:initialize) do |term, id|
    @term = term
    @definition = definition
    @id = id
  end

  define_singleton_method(:id) do
    @id
  end

  define_method(:list) do
    @term
  end

  define_method(:save) do
    @@all_terms.push(self)
  end

  define_singleton_method(:all) do
    @@all_terms
  end

  define_singleton_method(:clear) do
    @@all_terms = []
  end

  define_singleton_method(:search) do |search_word|
    @@all_terms.each() do |object|
      if object.list() == (search_word)
        return result = object
      end
    end
  end
end
