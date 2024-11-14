classdef Student
    properties
        ID
        Name
        Age
        GPA
        Major
    end
    
    methods
        function obj = Student(ID, Name, Age, GPA, Major)
            
            if nargin > 0  % Check arguements
                obj.ID = ID;
                obj.Name = Name;
                obj.Age = Age;
                obj.GPA = GPA;
                obj.Major = Major;
            end
        end
        
        function displayInfo(obj)
            % display the student's information
            fprintf('ID: %d, Name: %s, Age: %d, GPA: %.2f, Major: %s\n', ...
                    obj.ID, obj.Name, obj.Age, obj.GPA, obj.Major);
        end
        
        function obj = updateGPA(obj, newGPA)
            % update the GPA of the student
            obj.GPA = newGPA;
        end
    end
end