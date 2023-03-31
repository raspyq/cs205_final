# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

# Create a variable of the filename
FILENAME="pokemon.dat"
# Create a variable for Average HP
AVHP=0
# Create a variable for Average Attack
AVATK=0

# Print title for program
printf "==== SUMMARY OF DATA FILE ====\n"
# Print the name of the file
printf "File name: %s\n" $FILENAME
# Print the total pokemon
printf "Total Pokemon: "
awk 'END{print $1}' $FILENAME
# Use awk to find the sum of AVHP, then print out the average of AVHP using the number of lines
awk '{AVHP+=$6}END{print"Avg. HP: " AVHP/ NR}' $FILENAME
# Use awk to find the sum of AVATK, then print average of AVATK using number of lines
awk '{AVATK+=$7}END{print"Avg. Attack: " AVATK/ NR}' $FILENAME
# Print end of summary
printf "==== END SUMMARY ===="
