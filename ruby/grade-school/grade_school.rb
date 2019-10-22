class School
  def initialize
    @studentsDB = []
  end
  def add(studentName, studentGrade)
    if students(studentGrade) == [] then
      @studentsDB.push({grade: studentGrade, students: [studentName]})
    else
      students(studentGrade).push(studentName).sort!
    end
  end
  def students(grade)
    return [] if @studentsDB.empty?
    selection = @studentsDB.select{|gradeEntry| gradeEntry[:grade] == grade}
    selection.empty? ? [] : selection[0][:students]
  end
  def students_by_grade
    @studentsDB.sort_by{|grade| grade[:grade]}
  end
end