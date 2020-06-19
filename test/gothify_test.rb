require "minitest/autorun"
require "minitest/pride"
require "./lib/gothify"

class GothifyModuleTest < MiniTest::Test

  def setup
    @gothified_object = Object.new
    @gothified_object.extend(Gothify)
  end

  def test_it_can_prepend_goth
    assert_equal "goth hello", @gothified_object.gothify("hello")
    assert_equal "goth hello world", @gothified_object.gothify("hello world")
    assert_equal "goth good-bye", @gothified_object.gothify("good-bye")
  end

  def test_it_can_remove_goth_prefix
    assert_equal "hello", @gothified_object.ungothify("goth hello")
    assert_equal "hello world", @gothified_object.ungothify("goth hello world")
    assert_equal "good-bye", @gothified_object.ungothify("goth good-bye")
  end

end
