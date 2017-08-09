USE db_mylibrary
GO

 INSERT INTO tbl_Book
 (Book_Title, Book_PublisherName)
 VALUES
 ('The Lost Tribe', 'Picador USA'),
 ('The Shining', 'Doubleday'),
 ('Cats Cradle', 'Dell Publishing'),
 ('Breakfast of Champions', 'Dell Publishing'),
 ('IT', 'Doubleday'),
 ('Wool', 'Simon & Schuster'),
 ('Shift', 'Simon & Schuster'),
 ('Dust', 'Simon & Schuster'),
 ('The Martian', 'Broadway Books'),
 ('1984', 'Plume'),
 ('Cosmos', 'Ballantine Books'),
 ('Dragons of Eden', 'Ballantine Books'),
 ('The Origin of Species', 'Penguin'),
 ('A Brief History of Time', 'Bantam'),
 ('On the Road', 'Penguin'),
 ('Lord of the Flies', 'Penguin'),
 ('The Forever War', 'Doubleday'),
 ('Slaughterhouse-Five', 'Dell Publishing'),
 ('Stranger in a Strange Land', 'Bantam'),
 ('The Moon is a Harsh Mistress', 'Bantam')
 ;

 INSERT INTO tbl_Book_Authors
 (Book_Authors_Bookid, Book_Authors_AuthorName)
 VALUES
 ('1', 'Mark Lee'),
 ('2', 'Stephen King'),
 ('3', 'Kurt Vonnegut'),
 ('4', 'Kurt Vonnegut'),
 ('5', 'Stephen King'),
 ('6', 'Hugh Howey'),
 ('7', 'Hugh Howey'),
 ('8', 'Hugh Howey'),
 ('9', 'Andy Weir'),
 ('10', 'George Orewll'),
 ('11', 'Carl Sagan'),
 ('12', 'Carl Sagan'),
 ('13', 'Charles Darwin'),
 ('14', 'Stephen Hawking'),
 ('15', 'Jack Kerouac'),
 ('16', 'William Golding'),
 ('17', 'Joe Haldeman'),
 ('18', 'Kurt Vonnegut'),
 ('19', 'Robert A. Heinlein'),
 ('20', 'Robert A. Heinlein')
 ;

 INSERT INTO tbl_Publisher
 (Publisher_Name, Publisher_Address, Publisher_Phone)
 VALUES
 ('Picador USA', '175 5th Ave, New York, NY 10010', '(929)-454-6667'),
 ('Doubleday', '500 S. Greene St, Los Angeles, CA 90002', '(323) 321-8974'),
 ('Dell Publishing', '943 8th St, San Francisco, CA 94016', '(415) 455-9182'),
 ('Simon & Schuster', '100 Front St, Delran, NJ 08075', '(732) 227-9116'),
 ('Broadway Books', '1714 NE Broadway St, Portland, OR 97232', '(503) 678-6515'),
 ('Plume', '841 Houston St, New York, NY 10012', '(971) 222-7832'),
 ('Ballantine Books', '1945 Broadway St, New York, NY 10019', '(212) 811-4115'),
 ('Penguin', '375 Hudson St, New York, NY 10018', '(212) 323- 7871'),
 ('Bantam', '1800 Broadway St, New York, NY 10019', '(917) 454-6009')
 ;

 INSERT INTO tbl_Library_Branch
 (Library_Branch_BranchName, Library_Branch_Address)
 VALUES
 ('South Central', '9410 S. Engel Rd. Portland, ME 04050'),
 ('Dullesville', '7851 E. Lament St. Portland, ME 04101'),
 ('Central', '171 Main St. Portland, ME 04109'),
 ('Sharpstown', '6312 Adams Rd. Portland, ME 04102')
 ;

INSERT INTO tbl_Borrower
(Borrower_CardNo, Borrrower_Name, Borrower_Address, Borrower_Phone)
VALUES
('654101', 'Socrates Smith', '7893 Pine St. Portland, ME 04052', '(207) 381-7854'),
('654109', 'Janet Vegas', '3541 Doula Dr. Portland, ME 04105', '(207) 648-6875'),
('654225', 'Mary Lamb', '1795 Haines At. Portland, ME 04020', '(207) 381-9391'),
('654884', 'Johnny Carson', '6324 Nall Ave, Portland, ME 04100', '(207) 785-4380'),
('654020', 'Tommy Dorsey', '9941 Roe Ave, Portland, ME 04062', '(207) 816-9991'),
('654777', 'Aaron Burr', '6545 Antioch Rd. Portland, ME 04011', '(207) 402-9876'),
('654500', 'Mellissa Meyers', '9532 Kentucky St. Portland, ME 04104', '(207) 648-6514'),
('654401', 'Hansel Handel', '5557 Ohio St. Portland, ME 04044', '(207) 785-1244'),
('654375', 'Gretel Garbo', '2121 Missouri St. Portland, ME 04109', '(207) 381-4415'),
('654151', 'Ichabod Heron', '1111 Kansas Ave. Portland, ME 04025', '(207) 816-3348'),
('654010', 'Merlin Gandalfini', '2300 Oak St. Portland, ME 04051', '(207) 932-4782')
;  

INSERT INTO tbl_Book_Copies
(Book_Copies_Bookid, Book_Copies_Branchid, Book_Copies_No_Of_Copies)
VALUES
(1, 200, 2),
(2, 200, 3),
(3, 200, 2),
(4, 200, 3),
(5, 200, 2),
(6, 200, 3),
(7, 200, 2),
(8, 200, 3),
(9, 200, 2), 
(10, 200, 3),
(11, 200, 2),
(12, 200, 3),
(13, 200, 2),
(14, 200, 3),
(15, 200, 2),
(16, 200, 3),
(17, 200, 2),
(18, 200, 3),
(19, 200, 2),
(20, 200, 3),

(1, 201, 3),
(2, 201, 2),
(3, 201, 3),
(4, 201, 2),
(5, 201, 3),
(6, 201, 2),
(7, 201, 3),
(8, 201, 2),
(9, 201, 3), 
(10, 201, 2),
(11, 201, 3),
(12, 201, 2),
(13, 201, 3),
(14, 201, 2),
(15, 201, 3),
(16, 201, 2),
(17, 201, 3),
(18, 201, 2),
(19, 201, 3),
(20, 201, 2),

(1, 202, 2),
(2, 202, 3),
(3, 202, 2),
(4, 202, 3),
(5, 202, 2),
(6, 202, 3),
(7, 202, 2),
(8, 202, 3),
(9, 202, 2), 
(10, 202, 3),
(11, 202, 2),
(12, 202, 3),
(13, 202, 2),
(14, 202, 3),
(15, 202, 2),
(16, 202, 3),
(17, 202, 2),
(18, 202, 3),
(19, 202, 2),
(20, 202, 3),

(1, 203, 3),
(2, 203, 2),
(3, 203, 3),
(4, 203, 2),
(5, 203, 3),
(6, 203, 2),
(7, 203, 3),
(8, 203, 2),
(9, 203, 3), 
(10, 203, 2),
(11, 203, 3),
(12, 203, 2),
(13, 203, 3),
(14, 203, 2),
(15, 203, 3),
(16, 203, 2),
(17, 203, 3),
(18, 203, 2),
(19, 203, 3),
(20, 203, 2)
;

INSERT INTO tbl_Book_Loans
(Book_Loans_Bookid, Book_Loans_Branchid, Book_Loans_CardNo, Book_Loans_DateOut, Book_Loans_DueDate)
VALUES
('1', 200, 654101, '2017-06-05','2017-07-17'),
('3', 200, 654101, '2017-06-05','2017-07-17'),
('5', 200, 654101, '2017-06-09','2017-07-21'),
('7', 200, 654101, '2017-06-05','2017-07-17'),
('9', 200, 654101, '2017-06-09','2017-07-21'),
('11', 200, 654101, '2017-06-05','2017-07-17'),
('13', 200, 654101, '2017-06-14','2017-07-26'),
('15', 200, 654101, '2017-06-09','2017-07-21'),
('17', 200, 654101, '2017-06-05','2017-07-17'),
('19', 200, 654101, '2017-06-14','2017-07-26'),

('4', 201, 654109, '2017-07-03', '2017-08-14'),
('8', 201, 654109, '2017-06-15', '2017-07-27'),
('12', 201, 654109, '2017-07-03', '2017-08-14'),
('16', 201, 654109, '2017-06-15', '2017-07-27'),
('20', 201, 654109, '2017-07-03', '2017-08-14'),

('7', 202, 654225, '2017-06-26', '2017-08-07'),
('11', 202, 654225, '2017-06-26', '2017-08-07'),

('3', 203, 654884, '2017-05-15', '2017-06-26'),
('7', 203, 654884, '2017-06-15', '2017-06-27'),
('11', 203, 654884, '2017-05-15', '2017-06-26'),
('15', 203, 654884, '2017-06-15', '2017-06-27'),
('19', 203, 654884, '2017-05-15', '2017-06-26'),

('2', 200, 654020, '2017-08-01', '2017-09-12'),
('18', 200, 654020, '2017-08-01', '2017-09-12'),

('3', 201, 654777, '2017-06-02', '2017-07-14'),
('17', 201, 654777, '2017-06-02', '2017-07-14'),

('5', 203, 654500, '2017-07-11', '2017-08-22'),
('14', 203, 654500, '2017-07-11', '2017-08-22'),

('3', 200, 654401, '2017-07-07', '2017-08-18'),
('4', 200, 654401, '2017-07-07', '2017-08-18'),
('6', 200, 654401, '2017-06-27', '2017-08-08'),
('7', 200, 654401, '2017-06-27', '2017-08-08'),
('8', 200, 654401, '2017-06-27', '2017-08-08'),
('9', 200, 654401, '2017-06-27', '2017-08-08'),
('10', 200, 654401, '2017-07-15', '2017-08-24'),
('12', 200, 654401, '2017-07-15', '2017-08-24'),
('17', 200, 654401, '2017-07-07', '2017-08-18'),
('20', 200, 654401, '2017-07-07', '2017-08-18'),

('6', 203, 654375, '2017-06-28', '2017-08-09'),
('13', 203, 654375, '2017-06-27', '2017-08-08'),

('2', 202, 654151, '2017-05-05', '2017-06-16'),
('4', 202, 654151, '2017-06-24', '2017-08-05'),
('6', 202, 654151, '2017-07-13', '2017-08-24'),
('8', 202, 654151, '2017-06-24', '2017-08-05'),
('10', 202, 654151, '2017-05-05', '2017-06-16'),
('12', 202, 654151, '2017-06-24', '2017-08-05'),
('14', 202, 654151, '2017-07-13', '2017-08-24'),
('16', 202, 654151, '2017-05-05', '2017-06-16'),
('18', 202, 654151, '2017-06-24', '2017-08-05'),
('20', 202, 654151, '2017-07-13', '2017-08-24')
;