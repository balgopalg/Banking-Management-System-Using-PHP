-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 08:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `AnnouncementID` int(11) NOT NULL,
  `AnnouncementDate` date NOT NULL DEFAULT current_timestamp(),
  `Subject` varchar(100) NOT NULL,
  `AnnouncementMessage` mediumtext NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`AnnouncementID`, `AnnouncementDate`, `Subject`, `AnnouncementMessage`, `Link`) VALUES
(1, '2024-02-28', 'Open Account', 'Open a new account now <a href=\'/bms/openaccount.php\'>click here</a>. To start your journey.', '../../openaccount.php'),
(13, '2024-04-06', 'New Interest Rate Update', 'Dear Valued Customers,\n\nWe are excited to announce a significant update regarding our interest rates. As part of our commitment to providing the best financial services and staying competitive in today\'s market, we have revised our interest rates to better serve your needs.\n\nEffective immediately, we are pleased to inform you of the following changes:\n\nSavings Accounts: Our savings account interest rate has been increased by [percentage] to [new rate] APY. This adjustment aims to help you grow your savings faster and achieve your financial goals.\n\nLoan Products: For our loan products, we have adjusted the interest rates to [new rate] APR. We believe this change will make our loan offerings even more attractive and accessible to our customers.\n\nCertificate of Deposit (CD): Our CD interest rates have been updated to [new rate] APY, providing you with competitive returns on your investments over fixed terms.\n\nWe understand the importance of these financial decisions to you, and we assure you that these adjustments are made with careful consideration of current market conditions and your best interests in mind.\n\nShould you have any questions or require further clarification regarding these changes, please do not hesitate to contact our customer service team. We are here to assist you every step of the way.\n\nThank you for your continued trust and loyalty. We look forward to serving you with these enhanced offerings.\n\nBest Regards,\n\nG. Bal Gopal\nBranch Manager\nBank of Bhadrak', '/banking/components/announcements/announcements.php');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `ID` int(11) NOT NULL,
  `BranchName` varchar(100) NOT NULL,
  `BranchManager` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `District` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Pincode` bigint(20) NOT NULL,
  `IFSC` varchar(20) NOT NULL,
  `WorkingHours` varchar(100) NOT NULL DEFAULT '10:00 AM To 04:00 PM',
  `NonWorkingDays` varchar(1000) NOT NULL DEFAULT 'Sundays, Public Holidays, 2nd and 4th Saturday Of Every Month',
  `Classification` varchar(100) NOT NULL,
  `Phone` bigint(15) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ID`, `BranchName`, `BranchManager`, `Address`, `District`, `State`, `Pincode`, `IFSC`, `WorkingHours`, `NonWorkingDays`, `Classification`, `Phone`, `Email`) VALUES
(1, 'BHADRAK', 'G. Bal Gopal', 'balgopal@bdk.com', 'BHADRAK', 'ODISHA', 756100, 'BDK000B001', '10:00 AM To 04:00 PM', 'Sundays, Public Holidays, 2nd and 4th Saturday Of Every Month', 'urban', 8260429141, 'balgopal@manager.com'),
(2, 'BHADRAK COLLEGE', 'DEEPANKAR SINGHA', 'BHADRAK COLLEGE', 'BHADRAK', 'ODISHA', 756100, 'BDK000B002', '10:00 AM To 04:00 PM', 'Sundays, Public Holidays, 2nd and 4th Saturday Of Every Month', 'urban', 7606994417, 'deepankar@manager.com');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `phoneno` bigint(11) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `CRN` bigint(20) NOT NULL,
  `AccountNo` bigint(20) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Balance` decimal(11,2) NOT NULL,
  `PhoneNo` bigint(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `District` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `AadhaarNo` bigint(20) NOT NULL,
  `IFSC` varchar(20) NOT NULL,
  `img` varchar(255) NOT NULL,
  `DateOfOpening` date NOT NULL,
  `lastInterestDate` date NOT NULL DEFAULT current_timestamp(),
  `LastLogin` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `CRN`, `AccountNo`, `FullName`, `UserName`, `Password`, `Balance`, `PhoneNo`, `Email`, `gender`, `Address`, `District`, `State`, `Pincode`, `AadhaarNo`, `IFSC`, `img`, `DateOfOpening`, `lastInterestDate`, `LastLogin`, `Status`) VALUES
(194, 23053690, 2003873365, 'G. Bal Gopal', 'balgopal', '72f7ca030f9f095f4da7e11e3ab3b632', 368125.00, 8260429141, 'balgopal@gmail.com', 'male', 'rajghat chhak', 'Bhadrak', 'Odisha', 756100, 780049458511, 'BDK000B001', '1712513255_profile.png', '2024-03-24', '2024-04-07', '2024-04-07 23:36:29', 'Active'),
(195, 23059152, 2003557636, 'Sourav Das', 'sourav', '231f009004ef61cee94304a5b0f4f052', 100000.00, 7205156683, 'sourav@gmail.com', 'male', 'bhadrak', 'Bhadrak', 'Odisha', 756100, 728392442323, 'BDK000B001', '171251182027470334_7309681.jpg', '2024-04-07', '2024-04-07', '2024-04-07 23:33:31', 'Inactive'),
(196, 23059613, 2003925951, 'Deepankar Singha', 'deepankar', '9325a1c6879f2b39ba31a5f96bab2218', 60000.00, 8269923883, 'deepankar@gmail.com', 'male', 'basta', 'Baleswar', 'Odisha', 756029, 283838239925, 'BDK000B002', '1712511888Designer.png', '2024-04-07', '2024-04-07', '2024-04-07 23:24:20', 'Active'),
(197, 23051742, 2003499575, 'Kiran kumar murmu', 'kiran', 'b1a5b64256e27fa5ae76d62b95209ab3', 60000.00, 8257925288, 'kiran@gmail.com', 'male', 'baripada', 'Mayurbhanj', 'Odisha', 757001, 478299952424, 'BDK000B002', '17125120256769264_60111.jpg', '2024-04-07', '2024-04-07', '2024-04-07 19:47:51', 'Active');

--
-- Triggers `customers`
--
DELIMITER $$
CREATE TRIGGER `DeleteRelatedTransactions` AFTER DELETE ON `customers` FOR EACH ROW BEGIN
    DECLARE sender_exists INT;
    DECLARE receiver_exists INT;

       SELECT COUNT(*) into sender_exists FROM customers INNER JOIN transactions ON transactions.Sender=customers.AccountNo;

       SELECT COUNT(*) into receiver_exists FROM customers INNER JOIN transactions ON transactions.Receiver=customers.AccountNo;


    IF sender_exists = 0 OR receiver_exists = 0 THEN
              DELETE FROM transactions WHERE Sender = OLD.AccountNo OR Receiver = OLD.AccountNo;
    ELSE
                DELETE FROM transactions WHERE (Sender = OLD.AccountNo AND Receiver = 0) OR (Receiver = OLD.AccountNo AND Sender = 0);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` bigint(20) NOT NULL,
  `EmployeeName` varchar(100) NOT NULL,
  `EmployeeEmail` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `EmployeeIFSC` varchar(20) NOT NULL,
  `EmployeeBranch` int(11) NOT NULL,
  `EmployeeRole` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `EmployeeName`, `EmployeeEmail`, `UserName`, `Password`, `EmployeeIFSC`, `EmployeeBranch`, `EmployeeRole`) VALUES
(45, 'KIRAN MURMU', 'kiran@clerk.com', 'kiran', 'kiran', 'BDK000B002', 2, 'clerk'),
(61, 'Deepankar', 'deepankar@manager.com', 'deepankar', 'deepankar', 'BDK000B002', 2, 'manager'),
(62, 'balgopal', 'balgopal@manager.com', 'balgopal', 'balgopal', 'BDK000B001', 1, 'manager'),
(63, 'sourav', 'sourav@clerk.com', 'sourav', 'sourav', 'BDK000B001', 1, 'clerk');

-- --------------------------------------------------------

--
-- Table structure for table `fd`
--

CREATE TABLE `fd` (
  `ID` int(11) NOT NULL,
  `customerAccountNo` bigint(20) NOT NULL,
  `FDAccountNo` bigint(20) NOT NULL,
  `Principal` decimal(11,2) NOT NULL,
  `Tanure` int(11) NOT NULL,
  `InterestRate` decimal(10,2) NOT NULL,
  `Interest` decimal(10,2) NOT NULL,
  `FinalAmount` decimal(11,2) NOT NULL,
  `current_value` decimal(10,2) NOT NULL,
  `lastIntCreditDate` date NOT NULL DEFAULT current_timestamp(),
  `FDOpeningDate` date NOT NULL DEFAULT current_timestamp(),
  `FDBreakDate` date NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'ONGOING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fd`
--

INSERT INTO `fd` (`ID`, `customerAccountNo`, `FDAccountNo`, `Principal`, `Tanure`, `InterestRate`, `Interest`, `FinalAmount`, `current_value`, `lastIntCreditDate`, `FDOpeningDate`, `FDBreakDate`, `Status`) VALUES
(62, 2003873365, 9124404151, 40000.00, 24, 6.70, 5360.00, 45360.00, 40000.00, '2024-04-07', '2024-04-07', '2026-04-07', 'ONGOING');

-- --------------------------------------------------------

--
-- Table structure for table `loanapp`
--

CREATE TABLE `loanapp` (
  `LoanID` int(11) NOT NULL,
  `LoanAccountNo` bigint(20) NOT NULL,
  `customerAccountNo` bigint(20) NOT NULL,
  `customerBranch` varchar(255) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `LoanAmount` decimal(10,2) NOT NULL,
  `LoanType` varchar(255) NOT NULL,
  `LoanPaid` decimal(10,2) NOT NULL,
  `LoanDue` decimal(10,2) NOT NULL,
  `Status` varchar(255) DEFAULT 'NOT SANCTIONED',
  `SanctionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loanapp`
--

INSERT INTO `loanapp` (`LoanID`, `LoanAccountNo`, `customerAccountNo`, `customerBranch`, `customerName`, `LoanAmount`, `LoanType`, `LoanPaid`, `LoanDue`, `Status`, `SanctionDate`) VALUES
(43, 20247891, 2003873365, 'BDK000B001', 'G. Bal Gopal', 50000.00, 'personal', 81875.00, 0.00, 'FULLY PAID', '2024-04-07'),
(44, 20249883, 2003873365, 'BDK000B001', 'G. Bal Gopal', 500000.00, 'study', 0.00, 662500.00, 'SANCTIONED', '2024-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationID` int(11) NOT NULL,
  `Time` datetime NOT NULL DEFAULT current_timestamp(),
  `Actions` varchar(255) NOT NULL,
  `AccountNo` bigint(20) NOT NULL,
  `Message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`NotificationID`, `Time`, `Actions`, `AccountNo`, `Message`) VALUES
(267, '2024-04-07 23:21:17', 'credit', 2003925951, 'Amount of Rs. 20000 has been deposited to your A/c: 2003925951. Total Bal : Rs.20000'),
(268, '2024-04-07 23:21:32', 'debit', 2003925951, 'Amount of Rs. 10000 has been withdrawn from your A/c: 2003925951. Total Bal : Rs. 10000'),
(269, '2024-04-07 23:23:23', 'credit', 2003925951, 'Amount of Rs. 50000 has been deposited to your A/c: 2003925951. Total Bal : Rs.60000'),
(270, '2024-04-07 23:24:04', 'credit', 2003499575, 'Amount of Rs. 50000 has been deposited to your A/c: 2003499575. Total Bal : Rs.50000'),
(271, '2024-04-07 23:27:19', 'credit', 2003873365, 'Amount of Rs. 50000 has been deposited to your A/c: 2003873365. Total Bal : Rs.50000'),
(272, '2024-04-07 23:27:43', 'debit', 2003873365, 'A/c debited Rs.10000 on 2024-04-07 23:27:43 to 2003499575. Total Bal : Rs.40000'),
(273, '2024-04-07 23:27:43', 'credit', 2003499575, 'Your A/c is credited by Rs.10000 , Total Bal : Rs.60000 as on: 2024-04-07 23:27:43'),
(274, '2024-04-07 23:28:30', 'FDCreated', 2003873365, 'Rs 40000 of FD is created on 2024-04-07 for 2 years and 0 months'),
(275, '2024-04-07 23:29:57', 'loanSanctioned', 2003873365, 'You loan for Rs 50000.00 vide LoanAccountNo. 20247891 is sanctioned. '),
(276, '2024-04-07 23:31:39', 'loanSanctioned', 2003873365, 'You loan for Rs 500000.00 vide LoanAccountNo. 20249883 is sanctioned. '),
(277, '2024-04-07 23:32:46', 'loanPaid', 2003873365, 'you paid Rs 50000 and remaining due is : Rs 31875'),
(278, '2024-04-07 23:32:56', 'loanPaid', 2003873365, 'you paid Rs 31875 and remaining due is : Rs 0'),
(279, '2024-04-07 23:38:20', 'debit', 2003873365, 'A/c debited Rs.100000 on 2024-04-07 20:08:20 to 2003557636. Total Bal : Rs.368125'),
(280, '2024-04-07 23:38:20', 'credit', 2003557636, 'Your A/c is credited by Rs.100000 from 2003873365, Total Bal : Rs.100000 as on: 2024-04-07 20:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `payee`
--

CREATE TABLE `payee` (
  `ID` int(11) NOT NULL,
  `customerAccNo` bigint(20) NOT NULL,
  `payeeAccountNo` bigint(20) NOT NULL,
  `payeeName` varchar(255) NOT NULL,
  `payeeNickname` varchar(255) NOT NULL,
  `payeeIFSC` varchar(255) NOT NULL,
  `LastTransactionAmount` decimal(10,2) NOT NULL,
  `LastTransactionDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payee`
--

INSERT INTO `payee` (`ID`, `customerAccNo`, `payeeAccountNo`, `payeeName`, `payeeNickname`, `payeeIFSC`, `LastTransactionAmount`, `LastTransactionDate`) VALUES
(11, 2003925951, 2003499575, 'kiran murmu', 'kiran', 'BDK000B002', 0.00, '2024-04-07 23:25:26'),
(12, 2003873365, 2003499575, 'kiran', 'kiran', 'BDK000B002', 10000.00, '2024-04-07 23:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL,
  `accountno` bigint(20) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`ID`, `reqID`, `accountno`, `subject`, `message`) VALUES
(22, 19, 2003873365, 'interest rate', 'you can check the interest rates in our website . please go thorough our page');

-- --------------------------------------------------------

--
-- Table structure for table `rmrequest`
--

CREATE TABLE `rmrequest` (
  `ID` int(11) NOT NULL,
  `requestDate` date NOT NULL DEFAULT current_timestamp(),
  `customerAccountNo` bigint(20) NOT NULL,
  `customerBranch` varchar(255) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rmrequest`
--

INSERT INTO `rmrequest` (`ID`, `requestDate`, `customerAccountNo`, `customerBranch`, `customerName`, `subject`, `message`) VALUES
(19, '2024-04-07', 2003873365, 'BDK000B001', 'G. Bal Gopal', 'need some information', 'I want to know about recent interest rates');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` bigint(20) NOT NULL,
  `TransactionDate` datetime NOT NULL DEFAULT current_timestamp(),
  `TransactionAmount` decimal(20,2) NOT NULL,
  `Sender` bigint(20) NOT NULL,
  `Receiver` bigint(20) NOT NULL,
  `SenderBalance` decimal(10,2) NOT NULL,
  `ReceiverBalance` decimal(10,2) NOT NULL,
  `Actions` varchar(200) NOT NULL,
  `Remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `TransactionDate`, `TransactionAmount`, `Sender`, `Receiver`, `SenderBalance`, `ReceiverBalance`, `Actions`, `Remark`) VALUES
(276, '2024-04-01 17:43:21', 0.00, 0, 2003873365, 0.00, 0.00, 'int._credited', ''),
(277, '2024-04-05 20:34:26', 0.00, 0, 2003873365, 0.00, 0.00, 'int._credited', ''),
(278, '2024-04-07 23:21:17', 20000.00, 0, 2003925951, 0.00, 20000.00, 'deposit', ''),
(279, '2024-04-07 23:21:32', 10000.00, 2003925951, 0, 10000.00, 0.00, 'withdraw', ''),
(280, '2024-04-07 23:23:23', 50000.00, 0, 2003925951, 0.00, 60000.00, 'deposit', ''),
(281, '2024-04-07 23:24:04', 50000.00, 0, 2003499575, 0.00, 50000.00, 'deposit', ''),
(282, '2024-04-07 23:26:05', 0.00, 0, 2003873365, 0.00, 0.00, 'int._credited', ''),
(283, '2024-04-07 23:27:19', 50000.00, 0, 2003873365, 0.00, 50000.00, 'deposit', ''),
(284, '2024-04-07 23:27:43', 10000.00, 2003873365, 2003499575, 40000.00, 60000.00, 'Transfer', 'Quick Transfer'),
(285, '2024-04-07 23:28:30', 40000.00, 2003873365, 0, 0.00, 0.00, 'fd_booked', '9124404151'),
(286, '2024-04-07 23:29:57', 50000.00, 0, 2003873365, 0.00, 50000.00, 'loan_sanctioned', '20247891'),
(287, '2024-04-07 23:31:39', 500000.00, 0, 2003873365, 0.00, 550000.00, 'loan_sanctioned', '20249883'),
(288, '2024-04-07 23:32:46', 50000.00, 2003873365, 0, 500000.00, 0.00, 'loan_due_paid', '20247891'),
(289, '2024-04-07 23:32:56', 31875.00, 2003873365, 0, 468125.00, 0.00, 'loan_due_paid', '20247891'),
(290, '2024-04-07 23:38:20', 100000.00, 2003873365, 2003557636, 368125.00, 100000.00, 'Transfer', 'gift');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`AnnouncementID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IFSC` (`IFSC`) USING BTREE,
  ADD UNIQUE KEY `unique_branch` (`BranchName`),
  ADD UNIQUE KEY `unique_branch_mail` (`Email`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_email` (`Email`),
  ADD UNIQUE KEY `unique_username` (`UserName`),
  ADD KEY `fk_customer_branch` (`IFSC`),
  ADD KEY `AccountNo` (`AccountNo`) USING BTREE;

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `EmployeeEmail` (`EmployeeEmail`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `fk_employee_branch` (`EmployeeBranch`),
  ADD KEY `fk_employee_ifsc` (`EmployeeIFSC`);

--
-- Indexes for table `fd`
--
ALTER TABLE `fd`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FD_customerAccountNo` (`customerAccountNo`);

--
-- Indexes for table `loanapp`
--
ALTER TABLE `loanapp`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `loan_customerAccountNo` (`customerAccountNo`),
  ADD KEY `loan_customer_branch` (`customerBranch`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NotificationID`),
  ADD KEY `notification_AccountNo` (`AccountNo`);

--
-- Indexes for table `payee`
--
ALTER TABLE `payee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Payee_customerAccountNo` (`customerAccNo`),
  ADD KEY `payee_AccountNo` (`payeeAccountNo`),
  ADD KEY `payee_ifsc` (`payeeIFSC`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `replies_customerAccountNo` (`accountno`),
  ADD KEY `fk_customer_reqid` (`reqID`);

--
-- Indexes for table `rmrequest`
--
ALTER TABLE `rmrequest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `customerAccountNo` (`customerAccountNo`),
  ADD KEY `rm_customer_branch` (`customerBranch`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `AnnouncementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `fd`
--
ALTER TABLE `fd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `loanapp`
--
ALTER TABLE `loanapp`
  MODIFY `LoanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `payee`
--
ALTER TABLE `payee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `rmrequest`
--
ALTER TABLE `rmrequest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_customer_branch` FOREIGN KEY (`IFSC`) REFERENCES `branch` (`IFSC`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_employee_branch` FOREIGN KEY (`EmployeeBranch`) REFERENCES `branch` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_employee_ifsc` FOREIGN KEY (`EmployeeIFSC`) REFERENCES `branch` (`IFSC`) ON DELETE CASCADE;

--
-- Constraints for table `fd`
--
ALTER TABLE `fd`
  ADD CONSTRAINT `FD_customerAccountNo` FOREIGN KEY (`customerAccountNo`) REFERENCES `customers` (`AccountNo`) ON DELETE CASCADE;

--
-- Constraints for table `loanapp`
--
ALTER TABLE `loanapp`
  ADD CONSTRAINT `loan_customerAccountNo` FOREIGN KEY (`customerAccountNo`) REFERENCES `customers` (`AccountNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `loan_customer_branch` FOREIGN KEY (`customerBranch`) REFERENCES `branch` (`IFSC`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notification_AccountNo` FOREIGN KEY (`AccountNo`) REFERENCES `customers` (`AccountNo`) ON DELETE CASCADE;

--
-- Constraints for table `payee`
--
ALTER TABLE `payee`
  ADD CONSTRAINT `Payee_customerAccountNo` FOREIGN KEY (`customerAccNo`) REFERENCES `customers` (`AccountNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `payee_AccountNo` FOREIGN KEY (`payeeAccountNo`) REFERENCES `customers` (`AccountNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `payee_ifsc` FOREIGN KEY (`payeeIFSC`) REFERENCES `branch` (`IFSC`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `fk_customer_reqid` FOREIGN KEY (`reqID`) REFERENCES `rmrequest` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_customerAccountNo` FOREIGN KEY (`accountno`) REFERENCES `customers` (`AccountNo`) ON DELETE CASCADE;

--
-- Constraints for table `rmrequest`
--
ALTER TABLE `rmrequest`
  ADD CONSTRAINT `customerAccountNo` FOREIGN KEY (`customerAccountNo`) REFERENCES `customers` (`AccountNo`) ON DELETE CASCADE,
  ADD CONSTRAINT `rm_customer_branch` FOREIGN KEY (`customerBranch`) REFERENCES `branch` (`IFSC`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
