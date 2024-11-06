-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 10:11 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `materialdankonstruksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpembelian`
--

CREATE TABLE `detailpembelian` (
  `PurchaseDetailID` int(11) NOT NULL,
  `PurchaseID` int(11) NOT NULL,
  `MaterialID` int(11) NOT NULL,
  `QuantityPurchased` int(11) NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailpembelian`
--

INSERT INTO `detailpembelian` (`PurchaseDetailID`, `PurchaseID`, `MaterialID`, `QuantityPurchased`, `TotalPrice`) VALUES
(1, 1, 1, 500, '75000.00'),
(2, 2, 2, 300, '24000.00'),
(3, 3, 3, 1000, '60000.00'),
(4, 4, 4, 200, '40000.00'),
(5, 5, 5, 800, '72000.00'),
(6, 6, 6, 500, '25000.00'),
(7, 7, 7, 300, '36000.00'),
(8, 8, 8, 1000, '30000.00'),
(9, 9, 9, 600, '120000.00'),
(10, 10, 10, 400, '30000.00');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `InventoryID` int(11) NOT NULL,
  `MaterialID` int(11) NOT NULL,
  `QuantityAvailable` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`InventoryID`, `MaterialID`, `QuantityAvailable`, `LocationID`) VALUES
(1, 1, 500, 1),
(2, 2, 300, 2),
(3, 3, 200, 3),
(4, 4, 1000, 1),
(5, 5, 800, 4),
(6, 6, 500, 3),
(7, 7, 300, 1),
(8, 8, 1000, 2),
(9, 9, 600, 5),
(10, 10, 400, 6);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL,
  `LocationName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationID`, `LocationName`) VALUES
(1, 'Gudang Utama'),
(2, 'Gudang A'),
(3, 'Gudang B'),
(4, 'Gudang C'),
(5, 'Gudang Elektrikal'),
(6, 'Gudang Lantai');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `MaterialID` int(11) NOT NULL,
  `MaterialName` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`MaterialID`, `MaterialName`, `Category`, `UnitPrice`) VALUES
(1, 'Beton', 'Beton', '150.00'),
(2, 'Kayu', 'Kayu', '80.00'),
(3, 'Baja', 'Baja', '200.00'),
(4, 'Pasir', 'Pasir', '60.00'),
(5, 'Semen', 'Beton', '90.00'),
(6, 'Batu', 'Beton', '50.00'),
(7, 'Asbes', 'Bahan Atap', '120.00'),
(8, 'Pipa PVC', 'Plumbing', '30.00'),
(9, 'Kabel Listrik', 'Elektrikal', '200.00'),
(10, 'Keramik', 'Lantai', '75.00');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `PurchaseID` int(11) NOT NULL,
  `MaterialID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `PurchaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`PurchaseID`, `MaterialID`, `SupplierID`, `PurchaseDate`) VALUES
(1, 1, 1, '2024-01-10'),
(2, 2, 2, '2024-02-20'),
(3, 3, 3, '2024-03-15'),
(4, 4, 1, '2024-04-05'),
(5, 5, 4, '2024-05-10'),
(6, 6, 4, '2024-05-15'),
(7, 7, 5, '2024-06-05'),
(8, 8, 5, '2024-06-10'),
(9, 9, 4, '2024-06-20'),
(10, 10, 5, '2024-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `penggunaanmaterial`
--

CREATE TABLE `penggunaanmaterial` (
  `UsageID` int(11) NOT NULL,
  `ProjectID` int(11) NOT NULL,
  `MaterialID` int(11) NOT NULL,
  `QuantityUsed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penggunaanmaterial`
--

INSERT INTO `penggunaanmaterial` (`UsageID`, `ProjectID`, `MaterialID`, `QuantityUsed`) VALUES
(1, 1, 1, 100),
(2, 1, 2, 50),
(3, 2, 4, 200),
(4, 3, 3, 150),
(5, 4, 5, 150),
(6, 4, 6, 100),
(7, 4, 7, 50),
(8, 5, 8, 300),
(9, 5, 9, 200),
(10, 5, 10, 150);

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`ProjectID`, `ProjectName`, `StartDate`, `EndDate`) VALUES
(1, 'Pembangunan Gedung', '2024-01-01', '2024-06-30'),
(2, 'Renovasi Jalan', '2024-03-15', '2024-09-15'),
(3, 'Pembangunan Jembatan', '2024-04-01', '2024-12-31'),
(4, 'Pembangunan Perumahan', '2024-05-01', '2025-05-01'),
(5, 'Renovasi Sekolah', '2024-06-01', '2024-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `ContactInfo` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `ContactInfo`, `Address`) VALUES
(1, 'Supplier A', '123-456-7890', 'Jalan Raya No. 1, Jakarta'),
(2, 'Supplier B', '987-654-3210', 'Jalan Merdeka No. 2, Bandung'),
(3, 'Supplier C', '555-123-4567', 'Jalan Proklamasi No. 3, Surabaya'),
(4, 'Supplier D', '321-654-9870', 'Jalan Sudirman No. 4, Medan'),
(5, 'Supplier E', '444-222-3333', 'Jalan Gatot Subroto No. 5, Palembang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpembelian`
--
ALTER TABLE `detailpembelian`
  ADD PRIMARY KEY (`PurchaseDetailID`),
  ADD KEY `PurchaseID` (`PurchaseID`),
  ADD KEY `MaterialID` (`MaterialID`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`InventoryID`),
  ADD KEY `MaterialID` (`MaterialID`),
  ADD KEY `LocationID` (`LocationID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`MaterialID`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`PurchaseID`),
  ADD KEY `MaterialID` (`MaterialID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `penggunaanmaterial`
--
ALTER TABLE `penggunaanmaterial`
  ADD PRIMARY KEY (`UsageID`),
  ADD KEY `ProjectID` (`ProjectID`),
  ADD KEY `MaterialID` (`MaterialID`);

--
-- Indexes for table `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`ProjectID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpembelian`
--
ALTER TABLE `detailpembelian`
  ADD CONSTRAINT `detailpembelian_ibfk_1` FOREIGN KEY (`PurchaseID`) REFERENCES `pembelian` (`PurchaseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailpembelian_ibfk_2` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`MaterialID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD CONSTRAINT `inventaris_ibfk_1` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`MaterialID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventaris_ibfk_2` FOREIGN KEY (`LocationID`) REFERENCES `location` (`LocationID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`MaterialID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggunaanmaterial`
--
ALTER TABLE `penggunaanmaterial`
  ADD CONSTRAINT `penggunaanmaterial_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `proyek` (`ProjectID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penggunaanmaterial_ibfk_2` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`MaterialID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
