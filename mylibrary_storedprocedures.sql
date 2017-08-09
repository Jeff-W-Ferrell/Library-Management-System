USE db_mylibrary
GO

--1

CREATE PROC ssp_losttribe_copies_sharpstown
AS

SELECT tbl_Book.Book_Title, tbl_Library_Branch.Library_Branch_BranchName, tbl_Book_Copies.Book_Copies_No_Of_Copies
FROM tbl_Book
INNER JOIN tbl_Book_Copies ON tbl_Book_Copies.Book_Copies_Bookid = tbl_Book.Book_Bookid
INNER JOIN tbl_Library_Branch ON tbl_Library_Branch.Library_Branch_Branchid = tbl_Book_Copies.Book_Copies_Branchid
WHERE tbl_Book.Book_Title = 'The Lost Tribe' AND tbl_Library_Branch.Library_Branch_BranchName = 'Sharpstown'
;

EXEC ssp_losttribe_copies_sharpstown

--2

CREATE PROC ssp_losttribe_copies_allbranches
AS

SELECT tbl_Book.Book_Title, tbl_Library_Branch.Library_Branch_BranchName, tbl_Book_Copies.Book_Copies_No_Of_Copies
FROM tbl_Book
INNER JOIN tbl_Book_Copies ON tbl_Book_Copies.Book_Copies_Bookid = tbl_Book.Book_Bookid
INNER JOIN tbl_Library_Branch ON tbl_Library_Branch.Library_Branch_Branchid = tbl_Book_Copies.Book_Copies_Branchid
WHERE tbl_Book.Book_Title = 'The Lost Tribe' AND tbl_Library_Branch.Library_Branch_BranchName LIKE '%'
;

EXEC ssp_losttribe_copies_allbranches

--3

CREATE PROC ssp_borrowers_with_noloans
AS

SELECT tbl_Borrower.Borrower_Name
FROM tbl_Borrower 
FULL OUTER JOIN tbl_Book_Loans ON tbl_Book_Loans.Book_Loans_CardNo = tbl_Borrower.Borrower_CardNo 
WHERE tbl_Book_Loans.Book_Loans_CardNo IS NULL
;

EXEC ssp_borrowers_with_noloans

--4

CREATE PROC ssp_sharpstown_borrowers_booksduetoday
AS

SELECT tbl_Book.Book_Title, tbl_Borrower.Borrower_Name, tbl_Borrower.Borrower_Address
From tbl_Book_Loans
INNER JOIN tbl_Borrower ON tbl_Borrower.Borrower_CardNo = tbl_Book_Loans.Book_Loans_CardNo 
INNER JOIN tbl_Library_Branch ON tbl_Library_Branch.Library_Branch_Branchid = tbl_Book_Loans.Book_Loans_Branchid 
INNER JOIN tbl_Book ON tbl_Book.Book_Bookid = tbl_Book_Loans.Book_Loans_Bookid
WHERE tbl_Library_Branch.Library_Branch_BranchName = 'Sharpstown' 
AND tbl_Book_Loans.Book_Loans_DueDate = CAST (CURRENT_TIMESTAMP AS DATE)
;

EXEC ssp_sharpstown_borrowers_booksduetoday

--5

CREATE PROC ssp_allbooksloaned_allbranches
AS

SELECT tbl_Library_Branch.Library_Branch_BranchName, COUNT(tbl_Book_Loans.Book_Loans_CardNo)
FROM tbl_Library_Branch
INNER JOIN tbl_Book_Loans ON tbl_Book_Loans.Book_Loans_Branchid = tbl_Library_Branch.Library_Branch_Branchid
GROUP BY tbl_Library_Branch.Library_Branch_BranchName
;

EXEC ssp_allbooksloaned_allbranches

--6

CREATE PROC ssp_borrowers_with_morethanfive_loans
AS

SELECT tbl_Borrower.Borrower_Name, tbl_Borrower.Borrower_Address, COUNT(tbl_Book_Loans.Book_Loans_CardNo)
FROM tbl_Borrower
INNER JOIN tbl_Book_Loans ON tbl_Book_Loans.Book_Loans_CardNo = tbl_Borrower.Borrower_CardNo
GROUP BY tbl_Borrower.Borrower_Name, tbl_Borrower.Borrower_Address HAVING COUNT (*) > 5
;

EXEC ssp_borrowers_with_morethanfive_loans

--7

CREATE PROC ssp_copiesof_stephenkingbooks_central	
AS

SELECT tbl_Book.Book_Title, tbl_Book_Copies.Book_Copies_No_Of_Copies, tbl_Library_Branch.Library_Branch_BranchName
FROM tbl_Book
INNER JOIN tbl_Book_Copies ON tbl_Book_Copies.Book_Copies_Bookid = tbl_Book.Book_Bookid
INNER JOIN tbl_Book_Authors ON tbl_Book_Authors.Book_Authors_Bookid = tbl_Book.Book_Bookid
INNER JOIN tbl_Library_Branch ON tbl_Library_Branch.Library_Branch_Branchid = tbl_Book_Copies.Book_Copies_Branchid
WHERE tbl_Book_Authors.Book_Authors_AuthorName = 'Stephen King' AND tbl_Library_Branch.Library_Branch_BranchName = 'Central'
;

EXEC ssp_copiesof_stephenkingbooks_central