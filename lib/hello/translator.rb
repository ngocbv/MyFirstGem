class Hello::Translator
  def initialize language
    @language = language
  end

  def hi
    case @language
    when "spanish"
      "Hola mundo!"
    when "vietnamese"
      "Xin chao!"
    else
      "Hello world!"
    end
  end
end
