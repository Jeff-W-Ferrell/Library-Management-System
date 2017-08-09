CREATE DATABASE db_mylibrary

USE db_mylibrary
GO

CREATE TABLE tbl_Book (
Book_Bookid INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Book_Title VARCHAR(60) NOT NULL,
Book_PublisherName VARCHAR(60) NOT NULL
);

CREATE TABLE tbl_Book_Authors (
Book_Authors_Bookid INT PRIMARY KEY NOT NULL,
Book_Authors_AuthorName VARCHAR(60) NOT NULL
);

CREATE TABLE tbl_Publisher (
Publisher_Name VARCHAR(60) Primary Key NOT NULL,
Publisher_Address VARCHAR(60) NOT NULL,
Publisher_Phone VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_Book_Loans (
Book_Loans_Bookid INT NOT NULL,
Book_Loans_Branchid INT NOT NULL,
Book_Loans_CardNo INT NOT NULL,
Book_Loans_DateOut DATE NOT NULL,
Book_Loans_DueDate DATE NOT NULL
);

CREATE TABLE tbl_Book_Copies (
Book_Copies_Bookid INT NOT NULL,
Book_Copies_Branchid INT NOT NULL,
Book_Copies_No_Of_Copies INT NOT NULL	
);

CREATE TABLE tbl_Borrower (
Borrower_CardNo INT PRIMARY KEY NOT NULL,
Borrower_Name VARCHAR(50) NOT NULL,
Borrower_Address VARCHAR(70) NOT NULL,
Borrower_Phone VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_Library_Branch (
Library_Branch_Branchid INT PRIMARY KEY NOT NULL IDENTITY (200,1),
Library_Branch_BranchName VARCHAR(50) NOT NULL,
Library_Branch_Address VARCHAR(50) 
);