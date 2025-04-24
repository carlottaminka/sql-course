/*
Foundation Recap Exercise

Use the table PatientStay.  
This lists 44 patients admitted to London hospitals over 5 days between Feb 26th and March 2nd 2024
*/

SELECT
	*
FROM
	PatientStay ps ;

/*
1. Filter the list the patients to show only those  -
a) in the Oxleas hospital,
b) and also in the PRUH hospital,
c) admitted in February 2024
d) only the surgical wards (i.e. wards ending with the word Surgery)


2. Show the PatientId, AdmittedDate, DischargeDate, Hospital and Ward columns only, not all the columns.
3. Order results by AdmittedDate (latest first) then PatientID column (high to low)
4. Add a new column LengthOfStay which calculates the number of days that the patient stayed in hospital, inclusive of both admitted and discharge date.
*/
SELECT
	ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
    ,ps.Hospital
    ,ps.Ward
    ,DATEDIFF(day,ps.AdmittedDate,ps.DischargeDate) as LengthOfStay
FROM
	PatientStay ps 
    where ps.Hospital IN ('oxleas', 'pruh')
    AND ps.AdmittedDate BETWEEN '2024-02-01' and '2024-02-29'
    and ps.Ward like '%surgery'
    order by 
    ps.AdmittedDate desc,
    ps.patientid desc

-- Write the SQL statement here


/*
5. How many patients has each hospital admitted? 
6. How much is the total tariff for each hospital?
7. List only those hospitals that have admitted over 10 patients
8. Order by the hospital with most admissions first
*/
