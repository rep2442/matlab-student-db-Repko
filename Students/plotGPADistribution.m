function plotGpaDistribution(students)
    % Create a histogram for the GPA distribution
    gpas = [students.GPA];
    figure;
    histogram(gpas, 10);  % Create histogram with 10 bins
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Number of Students');
end