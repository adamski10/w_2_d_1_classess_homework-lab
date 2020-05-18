require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudents < Minitest::Test
  def test_student_name
    student = Students.new("Adam", "E40")
    assert_equal("Adam", student.student_name())
  end

  def test_student_cohort
    student = Students.new("Adam", "E40")
    assert_equal("E40", student.cohort())
  end

  def test_can_update_student_name
    student = Students.new("Adam", "E40")
   # Act
    student.new_student_name("Zenek")
   # Assert
    assert_equal("Zenek", student.new_student_name("Zenek"))
  end

  def test_can_update_cohort
    student = Students.new("Adam", "E40")
   # Act
    student.new_cohort("E41")
   # Assert
    assert_equal("E41", student.new_cohort("E41"))
  end

  def test_check_if_student_can_talk
    student = Students.new("Adam", "E40")
    assert_equal("I can talk", student.student_can_talk("I can talk"))
  end

  def test_ask_student_favourite_language
    student = Students.new("Adam", "E40")
    assert_equal("I love Ruby", student.student_favourite_language("Ruby"))
  end


end