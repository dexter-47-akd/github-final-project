#!/bin/bash
# Program to calculate the simple interest
# Formula: Simple Interest (I) = (Principal * Rate * Time) / 100
# Total Amount (A) = Principal + Interest

# Read the input fields from the user
echo "Enter the principal amount:"
read principal
echo "Enter the rate of interest (per annum, in %):"
read rate
echo "Enter the time period (in years):"
read time

# Validate the inputs
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ && "$rate" =~ ^[0-9]+(\.[0-9]+)?$ && "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input! Please enter numeric values for principal, rate and time."
    exit 1
fi

# Calculate the simple interest and the total amount
interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")
amount=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

# Display the result
echo "--------------------------------------------"
echo "Principal amount   : $principal"
echo "Rate of interest   : $rate% per annum"
echo "Time period        : $time year(s)"
echo "Simple interest    : $interest"
echo "Total amount       : $amount"
echo "--------------------------------------------"
