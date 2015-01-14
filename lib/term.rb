class Term

  @@all_terms = []

  define_method(:initialize) do |term, definition|
    @term = term
    @definition = definition
  end

  define_method(:list) do
    @term
  end

  define_method(:show) do
    @definition
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
    result = nil
    @@all_terms.each() do |object|
      if object.list() == search_word
        result = object
      end
    end
    result
  end
end
