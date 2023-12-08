-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 05:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sastacrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `ActID` int(255) NOT NULL,
  `Subject` int(100) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `NoteID` int(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `CompanyID` int(255) NOT NULL,
  `CompanyName` varchar(50) NOT NULL,
  `CompanyEmail` varchar(30) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(255) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `CompanyID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customercontact`
--

CREATE TABLE `customercontact` (
  `ContactID` int(255) NOT NULL,
  `ID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customercontactaddresses`
--

CREATE TABLE `customercontactaddresses` (
  `ID` int(255) NOT NULL,
  `Addresses` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customercontactphones`
--

CREATE TABLE `customercontactphones` (
  `ID` int(255) NOT NULL,
  `Phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customerpaydetails`
--

CREATE TABLE `customerpaydetails` (
  `ID` int(11) NOT NULL,
  `AdharNo` varchar(50) NOT NULL,
  `PanNo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customerprodcuts`
--

CREATE TABLE `customerprodcuts` (
  `PurchaseID` int(255) NOT NULL,
  `ProdcutID` int(255) NOT NULL,
  `PurchaseDate` varchar(50) NOT NULL,
  `RenewDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interactions`
--

CREATE TABLE `interactions` (
  `InterID` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `NoteID` int(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memos`
--

CREATE TABLE `memos` (
  `NoteID` int(255) NOT NULL,
  `Title` int(100) NOT NULL,
  `Content` varchar(100) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `OppID` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `OppurtunityName` varchar(50) NOT NULL,
  `Revenue` int(100) NOT NULL,
  `NoteID` int(11) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(255) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Price` int(50) NOT NULL,
  `Description` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` int(255) NOT NULL,
  `PurchaseID` int(255) NOT NULL,
  `Amount` int(30) NOT NULL,
  `Method` varchar(50) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` int(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Role` int(25) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD KEY `Activities_FK_notes` (`NoteID`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CUSTOMER_FK_COMPANY` (`CompanyID`);

--
-- Indexes for table `customercontact`
--
ALTER TABLE `customercontact`
  ADD PRIMARY KEY (`ContactID`),
  ADD KEY `CustomerContact_ID_FK` (`ID`);

--
-- Indexes for table `customercontactaddresses`
--
ALTER TABLE `customercontactaddresses`
  ADD KEY `CustomerContactAddresses` (`ID`);

--
-- Indexes for table `customercontactphones`
--
ALTER TABLE `customercontactphones`
  ADD KEY `CustomerContactPhones` (`ID`);

--
-- Indexes for table `customerpaydetails`
--
ALTER TABLE `customerpaydetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customerprodcuts`
--
ALTER TABLE `customerprodcuts`
  ADD KEY `CustomerProducts_FK_PRODID` (`ProdcutID`);

--
-- Indexes for table `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`InterID`),
  ADD KEY `Interactions_FK_CUS` (`ID`),
  ADD KEY `Interactions_FK_NOTES` (`NoteID`);

--
-- Indexes for table `memos`
--
ALTER TABLE `memos`
  ADD PRIMARY KEY (`NoteID`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`OppID`),
  ADD KEY `Opp_FK_CUS` (`ID`),
  ADD KEY `Opp_FK_NOTES` (`NoteID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `TransactionsFK_PURCHASE` (`PurchaseID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `CompanyID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customercontact`
--
ALTER TABLE `customercontact`
  MODIFY `ContactID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customerpaydetails`
--
ALTER TABLE `customerpaydetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interactions`
--
ALTER TABLE `interactions`
  MODIFY `InterID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memos`
--
ALTER TABLE `memos`
  MODIFY `NoteID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opportunities`
--
ALTER TABLE `opportunities`
  MODIFY `OppID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `Activities_FK_notes` FOREIGN KEY (`NoteID`) REFERENCES `memos` (`NoteID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `CUSTOMER_FK_COMPANY` FOREIGN KEY (`CompanyID`) REFERENCES `companies` (`CompanyID`);

--
-- Constraints for table `customercontact`
--
ALTER TABLE `customercontact`
  ADD CONSTRAINT `CustomerContact_ID_FK` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `customercontactaddresses`
--
ALTER TABLE `customercontactaddresses`
  ADD CONSTRAINT `CustomerContactAddresses` FOREIGN KEY (`ID`) REFERENCES `customercontact` (`ID`);

--
-- Constraints for table `customercontactphones`
--
ALTER TABLE `customercontactphones`
  ADD CONSTRAINT `CustomerContactPhones` FOREIGN KEY (`ID`) REFERENCES `customercontact` (`ID`);

--
-- Constraints for table `customerpaydetails`
--
ALTER TABLE `customerpaydetails`
  ADD CONSTRAINT `CustomerPayDetails_FK` FOREIGN KEY (`ID`) REFERENCES `customercontact` (`ID`);

--
-- Constraints for table `customerprodcuts`
--
ALTER TABLE `customerprodcuts`
  ADD CONSTRAINT `CustomerProducts_FK_PRODID` FOREIGN KEY (`ProdcutID`) REFERENCES `product` (`ProductID`);

--
-- Constraints for table `interactions`
--
ALTER TABLE `interactions`
  ADD CONSTRAINT `Interactions_FK_CUS` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `Interactions_FK_NOTES` FOREIGN KEY (`NoteID`) REFERENCES `memos` (`NoteID`);

--
-- Constraints for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD CONSTRAINT `Opp_FK_CUS` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `Opp_FK_NOTES` FOREIGN KEY (`NoteID`) REFERENCES `memos` (`NoteID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `TransactionsFK_PURCHASE` FOREIGN KEY (`PurchaseID`) REFERENCES `customerprodcuts` (`ProdcutID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
