require 'minitest/autorun'
require 'hello'

class HelloTest < Minitest::Test
  def test_english_hello
    assert_equal "Hello world!", Hello.hi("english")
  end

  def test_vietnamese_hello
    assert_equal "Xin chao!", Hello.hi("vietnamese")
  end

  def test_spanish_hello
    assert_equal "Hola mundo!", Hello.hi("spanish")
  end
end
