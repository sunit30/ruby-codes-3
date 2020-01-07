class Bootcamp

    def initialize(name,slogan,student_capacity)
        @name=name
        @slogan=slogan
        @student_capacity=student_capacity
        @teachers=[]
        @students=[]
        @grades=Hash.new{|h,k|h[k]=Array.new}
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(string)
        @teachers<<string
    end
    
    def enroll(string)
        if students.length<@student_capacity
            students<<string
            return true
        else
            return false
        end
    end

    def enrolled?(string)
        students.include?(string)
    end

    def student_to_teacher_ratio
        students.length/teachers.length
    end

    def add_grade(string,num)
        if students.include?(string)
            @grades[string]<<num
            return true
        else 
            return false
        end
    end

    def num_grades(string)
        @grades[string].length
    end
  
    def average_grade(string)
        if students.include?(string) && @grades[string].length > 0
        @grades[string].sum/@grades[string].length
        else return nil
        end
    end
end
