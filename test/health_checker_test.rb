require 'test/unit'
require 'health_checker'

class HealthCheckerTest < Test::Unit::TestCase
  def test_calling_render
    health_checker = DummyClass.new
    health_checker.health_check_status

    assert_equal({text: 'ok'}, health_checker.result)
  end
end

class DummyClass
  include HealthChecker
  attr_accessor :result

  def render(params)
    @result = params
  end
end