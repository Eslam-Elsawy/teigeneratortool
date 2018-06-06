#!/bin/sh

/home/eslamelsawy/jdk1.8.0_171/bin/java -mx700m -cp "/home/eslamelsawy/teigeneratortool/teigeneratortool/stanford_ner/stanford-ner.jar:/home/eslamelsawy/teigeneratortool/teigeneratortool/stanford_ner/lib/*" edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier /home/eslamelsawy/teigeneratortool/teigeneratortool/stanford_ner/classifiers/english.all.3class.distsim.crf.ser.gz -outputFormat inlineXML -textFile $1 > /home/eslamelsawy/teigeneratortool/teigeneratortool/temp/stanford_ner_output.txt

python3 /home/eslamelsawy/teigeneratortool/teigeneratortool/ner.py
