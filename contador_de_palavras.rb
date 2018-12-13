class WordCounter

  def initialize text
    WordCounter.count_all text
  end

  def self.count_all text
    retorno = {}
    text.gsub!(/[^0-9A-Za-z]/, ' ').downcase.split(" ").each do |valor|
      retorno[valor] = retorno.key?(valor) ? retorno[valor] + 1 : 1
    end

    puts retorno
  end
end

WordCounter.new("The quick brown fox jumps over the lazy dog!!")