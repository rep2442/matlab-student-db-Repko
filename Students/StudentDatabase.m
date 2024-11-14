classdef StudentDatabase
    properties
        students = []  % student object to array 
    end
    
    methods
        function obj = addStudent(obj, student)
            % how to add students to a database 
            obj.students = [obj.students, student];
        end
        
        function student = findStudentByID(obj, studentID)
            % finding students by thier ID
            student = [];
            for i = 1:length(obj.students)
                if obj.students(i).ID == studentID
                    student = obj.students(i);
                    break;
                end
            end
        end
        
        function studentsByMajor = getStudentsByMajor(obj, major)

            % seperating students by major
           
            studentsByMajor = obj.students(strcmp({obj.students.Major}, major));
        end
        
       
        function saveToFile(obj, filename)
            % Save the database to a .mat file
            save(filename, 'obj');
        end
        
        function obj = loadFromFile(obj, filename)
            % Load the database 
            if isfile(filename)
                loadedData = load(filename);
                obj = loadedData.obj;
            else
              
                fprintf('Returning an empty database.\n');
            end
        end
    end
end