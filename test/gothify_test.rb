require "minitest/autorun"
require "minitest/pride"
require "./lib/gothify"

class GothifyModuleTest < MiniTest::Test

  def setup
    @gothified_object = Object.new
    @gothified_object.extend(Gothify)
  end

  def test_it_can_prepend_goth
    assert_equal "goth hello world", @gothified_object.gothify("hello world")
  end

  def test_it_can_remove_goth_prefix
    assert_equal "hello world", @gothified_object.ungothify("goth hello world")
  end

end
