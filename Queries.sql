-- testes desafio 

-- Verifique se há algum colaborador sem gerente
SELECT Fname, Lname, Ssn
FROM employee
WHERE Super_ssn IS NULL;

-- James é gerente. 

-- Verifique se há algum departamento sem gerente
SELECT Dname, Mgr_ssn
FROM departament d
LEFT JOIN employee e ON d.Mgr_ssn = e.Ssn
WHERE e.Ssn IS NULL;

-- verificar numero de horas de projetos
SELECT Pno as Numero_Projeto, SUM(Hours) AS TotalHoras
FROM works_on
GROUP BY Pno;

-- Query Junção colaboradores e departamento associado
SELECT 
    e.Ssn,
    e.Fname,
    e.Lname,
    e.Address,
    e.Sex,
    e.Salary,
    e.Super_ssn,
    e.Dno,
    d.Dname AS Department
FROM employee e
LEFT JOIN departament d
    ON e.Dno = d.Dnumber;

-- Query que foi adicionada manual no power Bi para criação de nova tabela
SELECT 
    d.Dname,
    l.Dlocation,
    CONCAT(d.Dname, ' - ', l.Dlocation) AS Department_Location
FROM dept_locations l
JOIN departament d
    ON l.Dnumber = d.Dnumber;
