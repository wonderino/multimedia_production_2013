String [] outputs = new String[10];
for (int i = 0; i< 10; i++) {
  String tempString = "";
  for (int j = 0; j<10;j++) {
    tempString += String.valueOf((int)random(255)) ;
    if (j != 9) {
      tempString+=",";
    }
  }
  outputs[i] = tempString;
}

saveStrings("data/outt.csv", outputs);

