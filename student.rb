class Students

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end
  
  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def new_student_name(student_name)
    @student_name = student_name
  end

  def new_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_can_talk(string)
    return string
  end

  def student_favourite_language(language_name)
    return "I love #{language_name}"
  end


end