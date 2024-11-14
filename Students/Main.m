


% Main script 


db = StudentDatabase();

% Create some sample students
db = db.addStudent(Student(1, 'Kylie', 20, 3.8, 'Computer Science'));
db = db.addStudent(Student(2, 'Jess', 21, 3.5, 'Mathematics'));
db = db.addStudent(Student(3, 'Amelia', 22, 3.9, 'Physics'));
db = db.addStudent(Student(4, 'Jack', 20, 3.4, 'Computer Science'));
db = db.addStudent(Student(5, 'Olivia', 18, 3.7, 'Mathematics'));

% Save the database
db.saveToFile('students_db.mat');

% Load the database
db = db.loadFromFile('students_db.mat');

% Find a student by ID
student = db.findStudentByID(3);
if ~isempty(student)
    student.displayInfo();
end

% students by major
csStudents = db.getStudentsByMajor('Computer Science');
disp('Students in Computer Science:');
for i = 1:length(csStudents)
    csStudents(i).displayInfo();
end

%visualizations
plotGpaDistribution(db.students);
plotAverageGpaByMajor(db.students);
plotAgeDistribution(db.students);