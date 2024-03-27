#!/usr/bin/env python3

import csv
import json
import sys


def csv_to_json(csv_file_path, json_file_path):
    """
    Convert a CSV file to a JSON file.

    :param csv_file_path: Path to the source CSV file.
    :param json_file_path: Path to the destination JSON file.
    """
    # Read the CSV and add the data to a dictionary
    data = []
    try:
        with open(csv_file_path, encoding="utf-8") as csvf:
            csv_reader = csv.DictReader(csvf)
            for row in csv_reader:
                data.append(row)
    except Exception as e:
        print(f"Error reading CSV file: {e}")
        sys.exit(1)

    # Write the data to a JSON file
    try:
        with open(json_file_path, "w", encoding="utf-8") as jsonf:
            jsonf.write(json.dumps(data, indent=4))
    except Exception as e:
        print(f"Error writing JSON file: {e}")
        sys.exit(1)

    print(f"CSV data successfully written to {json_file_path}")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: csv_to_json.py <csv_file_path> <json_file_path>")
        sys.exit(1)

    csv_file_path = sys.argv[1]
    json_file_path = sys.argv[2]

    csv_to_json(csv_file_path, json_file_path)

"""
How to Use This Script:
1. Ensure Python 3 is installed on your system. You can check by running python3 --version in your terminal.
2. Save this script as csv_to_json.py in your scripts/utilities/ directory.
3. Make the script executable by running chmod +x csv_to_json.py in your terminal.
4. Execute the script by running ./csv_to_json.py path/to/input.csv path/to/output.json. Replace path/to/input.csv with the path to your source CSV file and path/to/output.json with the desired path for the output JSON file.
"""
