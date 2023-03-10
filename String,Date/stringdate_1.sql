SELECT A.APNT_NO,
        P.PT_NAME,
        P.PT_NO,
        D.MCDP_CD,
        D.DR_NAME,
        A.APNT_YMD
FROM APPOINTMENT A
LEFT JOIN DOCTOR D
ON A.MDDR_ID = D.DR_ID
LEFT JOIN PATIENT P
ON A.PT_NO = P.PT_NO
WHERE A.APNT_CNCL_YN = 'N'
        AND A.APNT_YMD LIKE '2022-04-13%'
        AND D.MCDP_CD = 'CS'
ORDER BY A.APNT_YMD; 
