# Use the strict and warnings modules
use strict;
use warnings;
use Time::HiRes qw(time);

# Ask the user for how many times to run the program
print "Enter the number of times to run the program: ";
my $times = <STDIN>;
chomp $times;

# Ask the user for the name of the file to run
print "Enter the name of the file: ";
my $fileName = <STDIN>;
chomp $fileName;

print "Enter the file extension of the file: ";
my $fileExtension = <STDIN>;
chomp $fileExtension;

# Initialize the totalTime variable to 0
my $totalTime = 0;

# Run the program the specified number of times
for (my $i = 1; $i <= $times; $i++) {

    # Redirect the standard input stream
    open(STDIN, "<", "/dev/null");

    my $sourceFile = $fileName . $fileExtension;

    # Measure the time it takes to run the script
    my $start_time = time();

    # Launch the C++ program
    system($sourceFile); 

    # End the measurement
    my $end_time = time();

    # Calculate and print the elapsed time
    my $elapsed_time = $end_time - $start_time;

    # Increment the totalTime variable
    $totalTime += $elapsed_time;
}

# Calculate and print the average elapsed time
my $average_time = $totalTime / $times;

my $average_time_ms = int(($totalTime / $times) * 1000);
my $total_time_ms = int($totalTime * 1000);

# Open the cppTime file in write mode
open my $fh, ">", "./runSpeeds/$fileName" . "_Time.md" or die "Could not open file: $!";

# Write some text to the file
print $fh "## $fileExtension\n";
print $fh "In this test we tested the:\n";
print $fh "* Total time it took to run the programs\n";
print $fh "* Average time it took to run the programs\n\n\n\n";

print $fh "The amount of times the program ran: $times\n";
print $fh "Total time: ~$total_time_ms ms\n";
print $fh "Average time: ~$average_time_ms ms per program\n";

# Close the file
close $fh;

print "--------------------------------";
print " The C++ test is now completed and it can be found in the $fileName file! ";
print "--------------------------------";