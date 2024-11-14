 function plotAgeDistribution(students)
    ages = [students.Age];
    figure;
    histogram(ages, 10);  % Create histogram with 10 bins
    title('Age Distribution');
    xlabel('Age');
    ylabel('Number of Students');
end