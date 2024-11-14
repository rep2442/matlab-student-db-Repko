function plotAverageGpaByMajor(students)
    % Create a bar plot for average GPA by major
    majors = unique({students.Major});
    avgGpa = zeros(1, length(majors));
    
    for i = 1:length(majors)
        majorStudents = students(strcmp({students.Major}, majors{i}));
        avgGpa(i) = mean([majorStudents.GPA]);
    end
    
    figure;
    bar(avgGpa);
    set(gca, 'XTickLabel', majors);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
end