# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"H61.9","system":"icd10"},{"code":"H91.8","system":"icd10"},{"code":"H66.1","system":"icd10"},{"code":"H66.9","system":"icd10"},{"code":"H73.8","system":"icd10"},{"code":"H69.8","system":"icd10"},{"code":"H69.9","system":"icd10"},{"code":"H74.9","system":"icd10"},{"code":"H80.9","system":"icd10"},{"code":"H66","system":"icd10"},{"code":"H75.8","system":"icd10"},{"code":"H66.4","system":"icd10"},{"code":"H93.9","system":"icd10"},{"code":"H73.9","system":"icd10"},{"code":"H60.9","system":"icd10"},{"code":"H90.2","system":"icd10"},{"code":"H83.8","system":"icd10"},{"code":"H74.8","system":"icd10"},{"code":"H66.3","system":"icd10"},{"code":"H65.9","system":"icd10"},{"code":"H72.9","system":"icd10"},{"code":"H90.5","system":"icd10"},{"code":"H83.9","system":"icd10"},{"code":"H61.8","system":"icd10"},{"code":"H93.8","system":"icd10"},{"code":"H91.9","system":"icd10"},{"code":"H81.9","system":"icd10"},{"code":"H66.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-ear-and-mastoid-process-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-specified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-specified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-specified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
