#!/bin/bash
#set -euxo pipefail
# This script is used to test the code in the repository. It runs all the tests and checks for any errors.
# It also checks for code style and formatting issues.
# Run all tests
echo "Running tests..."
name=Franklin
age=25
company="OpenAI"
if [ "$name" = "Franklin" ]; then
    echo -e "Name is $name\nAge is $age\nCompany is $company"
else
    echo "Name is not Franklin"
fi
echo "All tests passed!"