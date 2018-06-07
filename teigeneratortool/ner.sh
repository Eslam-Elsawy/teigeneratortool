#!/bin/sh

/home/newbook/pentimento.dreamhosters.com/jdk1.8.0_171/bin/java -mx700m -cp "/home/newbook/pentimento.dreamhosters.com/teigeneratortool/teigeneratortool/stanford_ner/stanford-ner.jar:/home/newbook/pentimento.dreamhosters.com/teigeneratortool/teigeneratortool/stanford_ner/lib/*" edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier /home/newbook/pentimento.dreamhosters.com/teigeneratortool/teigeneratortool/stanford_ner/classifiers/english.all.3class.distsim.crf.ser.gz -outputFormat inlineXML -textFile $1 > /home/newbook/pentimento.dreamhosters.com/teigeneratortool/teigeneratortool/temp/stanford_ner_output.txt

python3 /home/newbook/pentimento.dreamhosters.com/teigeneratortool/teigeneratortool/ner.py
