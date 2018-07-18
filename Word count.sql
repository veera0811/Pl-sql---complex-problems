 

DECLARE  

  

in_string VARCHAR2(500); 

out_string  VARCHAR2(800);   

word_count NUMBER;  

  

BEGIN   

in_string := 'AAA BBB CCCC DDDD EEEE FFFF GGGG HHHH IIII JJJJ KKKK LLLL';   

word_count := REGEXP_COUNT(in_string,' ',1)+1 ;    

Dbms_Output.Put_Line('word_count-->'|| word_count ); 

END; 

/ 
