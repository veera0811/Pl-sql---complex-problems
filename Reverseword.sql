1.REVERSE A WORD 

DECLARE 

  in_string  VARCHAR2(500); 

  out_string VARCHAR2(800); 

  spce_cnt   NUMBER; 
  

BEGIN 

  in_string  := 'AAA BBB CCCC DDDD EEEE FFFF GGGG HHHH IIII JJJJ KKKK LLLL'; 

  spce_cnt   := REGEXP_COUNT(in_string,' ',1) ; 

  out_string := out_string||SUBSTR (in_string,InStr(in_string, ' ',1,spce_cnt)); 

  Dbms_Output.Put_Line(out_string); 

  FOR i IN reverse 1.. spce_cnt 

  LOOP 

    out_string := out_string||' '|| SUBSTR (in_string,InStr(in_string, ' ',1,i)+1 ,InStr(SUBSTR (in_string,InStr(in_string, ' ',1,i)+1 ),' ' )); 

    Dbms_Output.Put_Line(out_string); 

  END LOOP; 

  out_string := out_string||' '|| SUBSTR (in_string,1,InStr(in_string, ' ',1)); 

  Dbms_Output.Put_Line(out_string); 

END; 

/ 
