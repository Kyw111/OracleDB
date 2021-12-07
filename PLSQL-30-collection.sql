/*
�÷���(Collection) : ���� �ڷ���
1. Ư�� �ڷ����� ������ ����
2. ���� ������ �����͸� �ϳ��� ���� ���
----------------------------------
�����迭:
TYPE �迭�̸� IS TABLE OF �ڷ��� INDEX BY �ε�����
---------------------------------------------------
�ε�����: Ű�� ����� �ε����� �ڷ���
1. BINARY_INTEGER
2. PLS_INTEGER(������)
3. VARCHAR2(������)
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
    