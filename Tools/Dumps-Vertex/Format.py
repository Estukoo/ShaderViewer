import csv
import numpy as np
import json

class FileProcessor:
    def __init__(self, file_name):
        self.file_name = file_name
        self.datas = {}

    def process_csvd(self):
        # Open the CSV file
        with open(self.file_name, "r") as csv_file:
            # Create a CSV reader object
            csv_reader = csv.reader(csv_file)
            header = next(csv_reader)
            cols_len = len(header) - 2

            for i in range(0, int(cols_len/4)): 
                data = []
                csv_file.seek(0) # move the cursor to the beginning of the file
                csv_reader = csv.reader(csv_file) # create a new csv_reader object
                next(csv_reader)
                start = 2 + i*4 # calculate the start index of the interval
                end = start + 4 # calculate the end index of the interval
                for row in csv_reader:
                    for k in range(start, end):
                        data.append(row[k])
                vector_name = header[start].split(".")[0].strip(" ")
                self.datas.update({vector_name:data})

    def process_csv(self):
        with open(self.file_name, 'r') as file:
            reader = csv.reader(file)
            headers = next(reader)

            start = 2
            
            for row in reader:
                for i in range(start, len(headers)-1):
                    key = headers[i].strip(" ")
                    key_name, key_coord = key.split('.')
                    

                    if key_name not in self.datas:
                        self.datas[key_name] = {}

                    if key_coord not in self.datas[key_name]:
                        self.datas[key_name][key_coord] = []

                    self.datas[key_name][key_coord].append(float(row[i]))
                    
    def write_json(self):
        with open("output.json", "w") as f:
            json.dump(self.datas, f)

    def write_output(self):
        with open("output.txt", "w") as f:
            for vector_name, data in self.datas.items():
                f.write("BufArray<float> {}({{\n".format(vector_name))
                nb_vectors = len(data.keys())
                nb_values = len(data[list(data.keys())[0]])
                for i in range(nb_values):
                    line = ", ".join(["{:13}".format(str(data[vector][i])) for vector in data.keys()])
                    if i != nb_values - 1:
                        line += ","
                    f.write("    {}\n".format(line))
                f.write("}}, {} );\n\n".format(nb_vectors))
    
    def process_csv_new(self):
        with open(self.file_name, 'r') as file:
            reader = csv.reader(file)
            headers = next(reader)
            
            next(reader)

            # Initialize the dictionary to store the data
            self.datas["data"] = []

            for row in reader:
                # Skip the first two rows
                # if row[0] == "vp_c1_data" or row[0] == "vp_c1_data[0]":
                #     continue

                # Split the data in the "Value" column by comma and convert to a list of float values
                data = [float(x) for x in row[1].split(",")]
                # print(data)

                # Add the data to the dictionary
                self.datas["data"].append(data)
                        


    def write_output_new(self, var_name):
        with open("output.txt", "w") as f:
            f.write("BufArray<float> {}({{\n".format(var_name))
            data = self.datas["data"]
            nb_values = len(data)
            for i in range(nb_values):
                line = ", ".join(["{:13}".format(str(val) + "f" if str(val) != "nan" else "NAN") for val in data[i]])
                if i != nb_values - 1:
                    line += ","
                f.write("    {}\n".format(line))
            f.write("}, 4 );\n\n")







# example usage
# fp = FileProcessor("Real-Dump.csv")
fp = FileProcessor("fp_c9.csv")
fp.process_csv_new()
fp.write_output_new("fp_c9_data")
# fp.process_csv()
# fp.write_json()
# fp.write_output()