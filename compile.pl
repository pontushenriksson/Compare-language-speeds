# Ask the user for the name of the file to run
print "Enter the name of the file: ";
my $fileName = <STDIN>;
chomp $fileName;

print "Enter the file extension of the file: ";
my $fileExtension = <STDIN>;
chomp $fileExtension;

my $sourceFile = $fileName . $fileExtension;

# Compile the C++ source file
system("g++ $sourceFile -o $fileName");