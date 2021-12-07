/*
컬렉션(Collection) : 복합 자료형
1. 특정 자료형을 여러개 저장
2. 여러 종류의 데이터를 하나로 묶어 사용
----------------------------------
연관배열:
TYPE 배열이름 IS TABLE OF 자료형 INDEX BY 인덱스형
---------------------------------------------------
인덱스형: 키로 사용할 인덱스의 자료형
1. BINARY_INTEGER
2. PLS_INTEGER(정수형)
3. VARCHAR2(문자형)
*/

SET SERVEROUTPUT ON;

DECLARE
    TYPE TEXTLISTS IS TABLE OF VARCHAR2(20)
        INDEX BY PLS_INTEGER;
        
    TEXT_LISTS TEXTLISTS;
    
BEGIN
    TEXT_LISTS(0) := '0ST';

    TEXT_LISTS(1) := '1ST';
    TEXT_LISTS(2) := '2ND';
    TEXT_LISTS(3) := '3RD';
    TEXT_LISTS(4) := '4TH';
    
    TEXT_LISTS(10) := '10TH';
    DBMS_OUTPUT.PUT_LINE('TEXT_LISTS(0) : ' || TEXT_LISTS(0));
    
    DBMS_OUTPUT.PUT_LINE('TEXT_LISTS(1) : ' || TEXT_LISTS(1));
    DBMS_OUTPUT.PUT_LINE('TEXT_LISTS(2) : ' || TEXT_LISTS(2));
    DBMS_OUTPUT.PUT_LINE('TEXT_LISTS(3) : ' || TEXT_LISTS(3));
    DBMS_OUTPUT.PUT_LINE('TEXT_LISTS(4) : ' || TEXT_LISTS(4));
    
    DBMS_OUTPUT.PUT_LINE('TEXT_LISTS(10) : ' || TEXT_LISTS(10));
    
END;
/
    