/*
potage 
44 0.7
1.2 7.4
soup
34 0.6
0 8
*/
%let PATH_CONF=/folders/myfolders/ex_data/MyRawdata;
DATA highlow;
INFILE "&Path_conf./drinkdata.txt";
INPUT name $ 
/*最初の行はnameで文字列*/
/ energy protein
/*次の行のデータをNormalHighとNormalLowとし*/
#3 fat carb;
/*最初から3番目（3行目）のデータをRecordHigh, RecordRowとする*/
RUN;
