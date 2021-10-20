# label-generator

# Requirements 
WIP: Pending requirements and create an exec that provide all the dependencies 

# Use example: 

1 - Create the labels given a CSV file:

```
python3 label_maker.py -i ExampleTemplate.csv -d ";" -o LabelsToPrint.pdf
```

2 - Group the labels into pages: 
```
./pdf_joiner.sh -f Generated_Labels.pdf -o imprimible.pdf
```
