require('minitest/autorun')
require('minitest/reporters')
require_relative('../team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < Minitest::Test


end