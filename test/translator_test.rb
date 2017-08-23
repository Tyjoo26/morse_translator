require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslateTest < MiniTest::Test

  def test_does_it_exist
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_eng_to_morse
    translator = Translate.new
    expected = "......-...-..--- .-----.-..-..-.."

    assert_equal expected, translator.eng_to_morse("Hello World")
  end


end
