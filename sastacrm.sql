-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 07:39 AM
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
-- Database: `sastacrm_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `actimemo`
--

CREATE TABLE `actimemo` (
  `ActID` int(255) NOT NULL,
  `NoteID` int(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `ActID` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Time` varchar(50) NOT NULL
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
  `Email` varchar(60) NOT NULL,
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
  `Subject` varchar(100) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intermemo`
--

CREATE TABLE `intermemo` (
  `InterID` int(255) NOT NULL,
  `NoteID` int(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memos`
--

CREATE TABLE `memos` (
  `NoteID` int(255) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oppmemo`
--

CREATE TABLE `oppmemo` (
  `OppID` int(11) NOT NULL,
  `NoteID` int(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `OppID` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `OppurtunityName` varchar(50) NOT NULL,
  `Revenue` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(255) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Price` int(50) NOT NULL,
  `Description` varchar(100) NOT NULL
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
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Role` int(25) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actimemo`
--
ALTER TABLE `actimemo`
  ADD PRIMARY KEY (`ActID`,`NoteID`),
  ADD KEY `NoteID` (`NoteID`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`ActID`),
  ADD KEY `Activities_FK_ID` (`ID`);

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
  ADD PRIMARY KEY (`PurchaseID`),
  ADD KEY `CustomerProducts_FK_PRODID` (`ProdcutID`);

--
-- Indexes for table `interactions`
--
ALTER TABLE `interactions`
  ADD PRIMARY KEY (`InterID`),
  ADD KEY `Interactions_FK_CUS` (`ID`);

--
-- Indexes for table `intermemo`
--
ALTER TABLE `intermemo`
  ADD PRIMARY KEY (`InterID`,`NoteID`),
  ADD KEY `JNOTE` (`NoteID`);

--
-- Indexes for table `memos`
--
ALTER TABLE `memos`
  ADD PRIMARY KEY (`NoteID`);

--
-- Indexes for table `oppmemo`
--
ALTER TABLE `oppmemo`
  ADD PRIMARY KEY (`OppID`,`NoteID`),
  ADD KEY `OOP` (`NoteID`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`OppID`),
  ADD KEY `Opp_FK_CUS` (`ID`);

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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `ActID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `CompanyID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customercontact`
--
ALTER TABLE `customercontact`
  MODIFY `ContactID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5356;

--
-- AUTO_INCREMENT for table `customerpaydetails`
--
ALTER TABLE `customerpaydetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customerprodcuts`
--
ALTER TABLE `customerprodcuts`
  MODIFY `PurchaseID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1221;

--
-- AUTO_INCREMENT for table `interactions`
--
ALTER TABLE `interactions`
  MODIFY `InterID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT for table `memos`
--
ALTER TABLE `memos`
  MODIFY `NoteID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `opportunities`
--
ALTER TABLE `opportunities`
  MODIFY `OppID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actimemo`
--
ALTER TABLE `actimemo`
  ADD CONSTRAINT `NoteID` FOREIGN KEY (`NoteID`) REFERENCES `memos` (`NoteID`),
  ADD CONSTRAINT `OPP` FOREIGN KEY (`ActID`) REFERENCES `activities` (`ActID`);

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `Activities_FK_ID` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

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
  ADD CONSTRAINT `Interactions_FK_CUS` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `intermemo`
--
ALTER TABLE `intermemo`
  ADD CONSTRAINT `INterOOP` FOREIGN KEY (`InterID`) REFERENCES `interactions` (`InterID`),
  ADD CONSTRAINT `JNOTE` FOREIGN KEY (`NoteID`) REFERENCES `memos` (`NoteID`);

--
-- Constraints for table `oppmemo`
--
ALTER TABLE `oppmemo`
  ADD CONSTRAINT `CUS` FOREIGN KEY (`OppID`) REFERENCES `opportunities` (`OppID`),
  ADD CONSTRAINT `OOP` FOREIGN KEY (`NoteID`) REFERENCES `memos` (`NoteID`);

--
-- Constraints for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD CONSTRAINT `Opp_FK_CUS` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `TransactionsFK_PURCHASE` FOREIGN KEY (`PurchaseID`) REFERENCES `customerprodcuts` (`PurchaseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
