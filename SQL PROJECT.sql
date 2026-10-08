-- CREATE CUSTOMER TABLE--
CREATE DATABASE GYM_MANAGEMENT;

-- CREATE TRAINERS TABLE --
use gym_management;
CREATE TABLE trainers (
    trainer_id INT PRIMARY KEY,
    trainer_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50),
    phone BIGINT,
    salary DECIMAL(10,2)
);
 -- CREATE MEMBERS TABLE --
 CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    age INT,
    phone BIGINT,
    email VARCHAR(100),
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id)
);

-- CREATE MEMBERSHIP TABLE --
CREATE TABLE membership (
    membership_id INT PRIMARY KEY,
    member_id INT,
    membership_type VARCHAR(30),
    start_date DATE,
    end_date DATE,
    fee DECIMAL(10,2),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- CREATE PAYMENTS TABLE --
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    member_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    payment_status VARCHAR(20),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- CREATE ATTENDANCE TABLE --
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    member_id INT,
    attendance_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- INSERTING DATA INTO TRAINERS TABLE --
INSERT INTO trainers
(trainer_id, trainer_name, specialization, phone, salary)
VALUES
(101, 'Rahul Sharma', 'Weight Training', 9876500001, 35000.00),
(102, 'Priya Mehta', 'Yoga', 9876500002, 32000.00),
(103, 'Amit Patil', 'Cardio', 9876500003, 30000.00),
(104, 'Sukanya Mulay', 'CrossFit', 9876500004, 38000.00),
(105, 'Vikas Singh', 'Strength Training', 9876500005, 36000.00),
(106, 'Priyanka Patil', 'Zumba', 9876500006, 31000.00),
(107, 'Mrunmayee Hadekar', 'Functional Training', 9876500007, 34000.00),
(108, 'Pooja Bhatt', 'Pilates', 9876500008, 33000.00),
(109, 'Karan Malhotra', 'Bodybuilding', 9876500009, 40000.00),
(110, 'Anjali Rao', 'Fitness Training', 9876500010, 37000.00);

-- INSERTING DATA INTO MEMEBERS --
INSERT INTO members
(member_id, member_name, gender, age, phone, email, trainer_id)
VALUES
(1, 'Aarav Shah', 'Male', 25, 9000000001, 'aarav.shah@gmail.com', 101),
(2, 'Ananya More', 'Female', 23, 9000000002, 'ananya.more@gmail.com', 102),
(3, 'Rohan Patil', 'Male', 30, 9000000003, 'rohan.patil@gmail.com', 103),
(4, 'Sneha Desai', 'Female', 27, 9000000004, 'sneha.desai@gmail.com', 104),
(5, 'Karan Joshi', 'Male', 29, 9000000005, 'karan.joshi@gmail.com', 105),
(6, 'Neha Sharma', 'Female', 24, 9000000006, 'neha.sharma@gmail.com', 106),
(7, 'Aditya Kulkarni', 'Male', 32, 9000000007, 'aditya.kulkarni@gmail.com', 107),
(8, 'Pooja Singh', 'Female', 26, 9000000008, 'pooja.singh@gmail.com', 108),
(9, 'Vivek Mehta', 'Male', 35, 9000000009, 'vivek.mehta@gmail.com', 109),
(10, 'Isha Rao', 'Female', 28, 9000000010, 'isha.rao@gmail.com', 110),

(11, 'Arjun Verma', 'Male', 31, 9000000011, 'arjun.verma@gmail.com', 101),
(12, 'Kavya Shah', 'Female', 22, 9000000012, 'kavya.shah@gmail.com', 102),
(13, 'Siddharth Patil', 'Male', 27, 9000000013, 'siddharth.patil@gmail.com', 103),
(14, 'Riya Joshi', 'Female', 25, 9000000014, 'riya.joshi@gmail.com', 104),
(15, 'Manish Singh', 'Male', 34, 9000000015, 'manish.singh@gmail.com', 105),
(16, 'Simran Kapoor', 'Female', 29, 9000000016, 'simran.kapoor@gmail.com', 106),
(17, 'Akash Desai', 'Male', 26, 9000000017, 'akash.desai@gmail.com', 107),
(18, 'Meera Nair', 'Female', 30, 9000000018, 'meera.nair@gmail.com', 108),
(19, 'Raj Malhotra', 'Male', 38, 9000000019, 'raj.malhotra@gmail.com', 109),
(20, 'Tanvi Rao', 'Female', 24, 9000000020, 'tanvi.rao@gmail.com', 110),
(21, 'Yash Sharma', 'Male', 28, 9000000021, 'yash.sharma@gmail.com', 101),
(22, 'Nisha More', 'Female', 27, 9000000022, 'nisha.more@gmail.com', 102),
(23, 'Harsh Patil', 'Male', 33, 9000000023, 'harsh.patil@gmail.com', 103),
(24, 'Mitali Desai', 'Female', 26, 9000000024, 'mitali.desai@gmail.com', 104),
(25, 'Ritesh Joshi', 'Male', 36, 9000000025, 'ritesh.joshi@gmail.com', 105),
(26, 'Aditi Singh', 'Female', 23, 9000000026, 'aditi.singh@gmail.com', 106),
(27, 'Saurabh Kapoor', 'Male', 31, 9000000027, 'saurabh.kapoor@gmail.com', 107),
(28, 'Shruti Nair', 'Female', 29, 9000000028, 'shruti.nair@gmail.com', 108),
(29, 'Vishal Rao', 'Male', 40, 9000000029, 'vishal.rao@gmail.com', 109),
(30, 'Diya Mehta', 'Female', 21, 9000000030, 'diya.mehta@gmail.com', 110),

(31, 'Mohit Sharma', 'Male', 37, 9000000031, 'mohit.sharma@gmail.com', 101),
(32, 'Pallavi More', 'Female', 28, 9000000032, 'pallavi.more@gmail.com', 102),
(33, 'Nikhil Patil', 'Male', 30, 9000000033, 'nikhil.patil@gmail.com', 103),
(34, 'Sakshi Desai', 'Female', 25, 9000000034, 'sakshi.desai@gmail.com', 104),
(35, 'Abhishek Joshi', 'Male', 32, 9000000035, 'abhishek.joshi@gmail.com', 105),
(36, 'Komal Singh', 'Female', 27, 9000000036, 'komal.singh@gmail.com', 106),
(37, 'Varun Kapoor', 'Male', 29, 9000000037, 'varun.kapoor@gmail.com', 107),
(38, 'Radhika Nair', 'Female', 34, 9000000038, 'radhika.nair@gmail.com', 108),
(39, 'Gaurav Malhotra', 'Male', 41, 9000000039, 'gaurav.malhotra@gmail.com', 109),
(40, 'Ayesha Rao', 'Female', 26, 9000000040, 'ayesha.rao@gmail.com', 110),
(41, 'Dev Sharma', 'Male', 24, 9000000041, 'dev.sharma@gmail.com', 101),
(42, 'Shreya Mehta', 'Female', 22, 9000000042, 'shreya.mehta@gmail.com', 102),
(43, 'Omkar Patil', 'Male', 35, 9000000043, 'omkar.patil@gmail.com', 103),
(44, 'Ishita Joshi', 'Female', 31, 9000000044, 'ishita.joshi@gmail.com', 104),
(45, 'Sameer Singh', 'Male', 39, 9000000045, 'sameer.singh@gmail.com', 105),
(46, 'Payal Kapoor', 'Female', 28, 9000000046, 'payal.kapoor@gmail.com', 106),
(47, 'Nitin Desai', 'Male', 33, 9000000047, 'nitin.desai@gmail.com', 107),
(48, 'Mansi Nair', 'Female', 25, 9000000048, 'mansi.nair@gmail.com', 108),
(49, 'Rahul Malhotra', 'Male', 36, 9000000049, 'rahul.malhotra@gmail.com', 109),
(50, 'Kriti Rao', 'Female', 30, 9000000050, 'kriti.rao@gmail.com', 110);

-- INSERTING DATA INTO MEMEBERSHIP --
INSERT INTO membership
(membership_id, member_id, membership_type, start_date, end_date, fee)
VALUES
(201, 1, 'Gold', '2026-01-01', '2026-12-31', 18000.00),
(202, 2, 'Silver', '2026-01-05', '2026-07-04', 12000.00),
(203, 3, 'Platinum', '2026-01-10', '2027-01-09', 25000.00),
(204, 4, 'Gold', '2026-01-15', '2027-01-14', 18000.00),
(205, 5, 'Silver', '2026-01-20', '2026-07-19', 12000.00),
(206, 6, 'Platinum', '2026-02-01', '2027-01-31', 25000.00),
(207, 7, 'Gold', '2026-02-05', '2027-02-04', 18000.00),
(208, 8, 'Silver', '2026-02-10', '2026-08-09', 12000.00),
(209, 9, 'Platinum', '2026-02-15', '2027-02-14', 25000.00),
(210, 10, 'Gold', '2026-02-20', '2027-02-19', 18000.00),

(211, 11, 'Silver', '2026-03-01', '2026-08-31', 12000.00),
(212, 12, 'Gold', '2026-03-05', '2027-03-04', 18000.00),
(213, 13, 'Platinum', '2026-03-10', '2027-03-09', 25000.00),
(214, 14, 'Silver', '2026-03-15', '2026-09-14', 12000.00),
(215, 15, 'Gold', '2026-03-20', '2027-03-19', 18000.00),
(216, 16, 'Platinum', '2026-04-01', '2027-03-31', 25000.00),
(217, 17, 'Gold', '2026-04-05', '2027-04-04', 18000.00),
(218, 18, 'Silver', '2026-04-10', '2026-10-09', 12000.00),
(219, 19, 'Platinum', '2026-04-15', '2027-04-14', 25000.00),
(220, 20, 'Gold', '2026-04-20', '2027-04-19', 18000.00),

(221, 21, 'Silver', '2026-05-01', '2026-10-31', 12000.00),
(222, 22, 'Gold', '2026-05-05', '2027-05-04', 18000.00),
(223, 23, 'Platinum', '2026-05-10', '2027-05-09', 25000.00),
(224, 24, 'Silver', '2026-05-15', '2026-11-14', 12000.00),
(225, 25, 'Gold', '2026-05-20', '2027-05-19', 18000.00),
(226, 26, 'Platinum', '2026-06-01', '2027-05-31', 25000.00),
(227, 27, 'Gold', '2026-06-05', '2027-06-04', 18000.00),
(228, 28, 'Silver', '2026-06-10', '2026-12-09', 12000.00),
(229, 29, 'Platinum', '2026-06-15', '2027-06-14', 25000.00),
(230, 30, 'Gold', '2026-06-20', '2027-06-19', 18000.00),

(231, 31, 'Silver', '2026-07-01', '2026-12-31', 12000.00),
(232, 32, 'Gold', '2026-07-05', '2027-07-04', 18000.00),
(233, 33, 'Platinum', '2026-07-10', '2027-07-09', 25000.00),
(234, 34, 'Silver', '2026-07-15', '2027-01-14', 12000.00),
(235, 35, 'Gold', '2026-07-20', '2027-07-19', 18000.00),
(236, 36, 'Platinum', '2026-08-01', '2027-07-31', 25000.00),
(237, 37, 'Gold', '2026-08-05', '2027-08-04', 18000.00),
(238, 38, 'Silver', '2026-08-10', '2027-02-09', 12000.00),
(239, 39, 'Platinum', '2026-08-15', '2027-08-14', 25000.00),
(240, 40, 'Gold', '2026-08-18', '2027-08-17', 18000.00),

(241, 41, 'Silver', '2026-08-01', '2027-01-31', 12000.00),
(242, 42, 'Gold', '2026-08-02', '2027-08-01', 18000.00),
(243, 43, 'Platinum', '2026-08-03', '2027-08-02', 25000.00),
(244, 44, 'Silver', '2026-08-04', '2027-02-03', 12000.00),
(245, 45, 'Gold', '2026-08-05', '2027-08-04', 18000.00),
(246, 46, 'Platinum', '2026-08-06', '2027-08-05', 25000.00),
(247, 47, 'Gold', '2026-08-07', '2027-08-06', 18000.00),
(248, 48, 'Silver', '2026-08-08', '2027-02-07', 12000.00),
(249, 49, 'Platinum', '2026-08-09', '2027-08-08', 25000.00),
(250, 50, 'Gold', '2026-08-10', '2027-08-09', 18000.00);
 
 -- INSEERTING DATA INTO PAYMENTS --
 INSERT INTO payments
(payment_id, member_id, payment_date, amount, payment_method, payment_status)
VALUES
(301, 1, '2026-01-01', 18000.00, 'UPI', 'Paid'),
(302, 2, '2026-01-05', 12000.00, 'Card', 'Paid'),
(303, 3, '2026-01-10', 25000.00, 'Cash', 'Paid'),
(304, 4, '2026-01-15', 18000.00, 'UPI', 'Paid'),
(305, 5, '2026-01-20', 12000.00, 'Card', 'Pending'),
(306, 6, '2026-02-01', 25000.00, 'UPI', 'Paid'),
(307, 7, '2026-02-05', 18000.00, 'Cash', 'Paid'),
(308, 8, '2026-02-10', 12000.00, 'Card', 'Paid'),
(309, 9, '2026-02-15', 25000.00, 'UPI', 'Paid'),
(310, 10, '2026-02-20', 18000.00, 'Cash', 'Pending'),

(311, 11, '2026-03-01', 12000.00, 'UPI', 'Paid'),
(312, 12, '2026-03-05', 18000.00, 'Card', 'Paid'),
(313, 13, '2026-03-10', 25000.00, 'UPI', 'Paid'),
(314, 14, '2026-03-15', 12000.00, 'Cash', 'Pending'),
(315, 15, '2026-03-20', 18000.00, 'Card', 'Paid'),
(316, 16, '2026-04-01', 25000.00, 'UPI', 'Paid'),
(317, 17, '2026-04-05', 18000.00, 'Cash', 'Paid'),
(318, 18, '2026-04-10', 12000.00, 'Card', 'Paid'),
(319, 19, '2026-04-15', 25000.00, 'UPI', 'Pending'),
(320, 20, '2026-04-20', 18000.00, 'Cash', 'Paid'),

(321, 21, '2026-05-01', 12000.00, 'UPI', 'Paid'),
(322, 22, '2026-05-05', 18000.00, 'Card', 'Paid'),
(323, 23, '2026-05-10', 25000.00, 'Cash', 'Paid'),
(324, 24, '2026-05-15', 12000.00, 'UPI', 'Pending'),
(325, 25, '2026-05-20', 18000.00, 'Card', 'Paid'),
(326, 26, '2026-06-01', 25000.00, 'UPI', 'Paid'),
(327, 27, '2026-06-05', 18000.00, 'Cash', 'Paid'),
(328, 28, '2026-06-10', 12000.00, 'Card', 'Paid'),
(329, 29, '2026-06-15', 25000.00, 'UPI', 'Pending'),
(330, 30, '2026-06-20', 18000.00, 'Cash', 'Paid'),

(331, 31, '2026-07-01', 12000.00, 'UPI', 'Paid'),
(332, 32, '2026-07-05', 18000.00, 'Card', 'Paid'),
(333, 33, '2026-07-10', 25000.00, 'Cash', 'Paid'),
(334, 34, '2026-07-15', 12000.00, 'UPI', 'Pending'),
(335, 35, '2026-07-20', 18000.00, 'Card', 'Paid'),
(336, 36, '2026-08-01', 25000.00, 'UPI', 'Paid'),
(337, 37, '2026-08-05', 18000.00, 'Cash', 'Paid'),
(338, 38, '2026-08-10', 12000.00, 'Card', 'Paid'),
(339, 39, '2026-08-15', 25000.00, 'UPI', 'Pending'),
(340, 40, '2026-08-18', 18000.00, 'Cash', 'Paid');

-- INSERTING DATA INTO ATTENDANCE --
INSERT INTO attendance
(attendance_id, member_id, attendance_date, status)
VALUES
(401, 1, '2026-08-01', 'Present'),
(402, 2, '2026-08-01', 'Present'),
(403, 3, '2026-08-01', 'Absent'),
(404, 4, '2026-08-01', 'Present'),
(405, 5, '2026-08-01', 'Present'),
(406, 6, '2026-08-01', 'Absent'),
(407, 7, '2026-08-01', 'Present'),
(408, 8, '2026-08-01', 'Present'),
(409, 9, '2026-08-01', 'Present'),
(410, 10, '2026-08-01', 'Absent'),

(411, 11, '2026-08-02', 'Present'),
(412, 12, '2026-08-02', 'Absent'),
(413, 13, '2026-08-02', 'Present'),
(414, 14, '2026-08-02', 'Present'),
(415, 15, '2026-08-02', 'Absent'),
(416, 16, '2026-08-02', 'Present'),
(417, 17, '2026-08-02', 'Present'),
(418, 18, '2026-08-02', 'Absent'),
(419, 19, '2026-08-02', 'Present'),
(420, 20, '2026-08-02', 'Present'),

(421, 21, '2026-08-03', 'Present'),
(422, 22, '2026-08-03', 'Present'),
(423, 23, '2026-08-03', 'Absent'),
(424, 24, '2026-08-03', 'Present'),
(425, 25, '2026-08-03', 'Present'),
(426, 26, '2026-08-03', 'Absent'),
(427, 27, '2026-08-03', 'Present'),
(428, 28, '2026-08-03', 'Present'),
(429, 29, '2026-08-03', 'Absent'),
(430, 30, '2026-08-03', 'Present'),

(431, 31, '2026-08-04', 'Absent'),
(432, 32, '2026-08-04', 'Present'),
(433, 33, '2026-08-04', 'Present'),
(434, 34, '2026-08-04', 'Absent'),
(435, 35, '2026-08-04', 'Present'),
(436, 36, '2026-08-04', 'Present'),
(437, 37, '2026-08-04', 'Absent'),
(438, 38, '2026-08-04', 'Present'),
(439, 39, '2026-08-04', 'Present'),
(440, 40, '2026-08-04', 'Absent'),

(441, 41, '2026-08-05', 'Present'),
(442, 42, '2026-08-05', 'Present'),
(443, 43, '2026-08-05', 'Present'),
(444, 44, '2026-08-05', 'Absent'),
(445, 45, '2026-08-05', 'Present'),
(446, 46, '2026-08-05', 'Absent'),
(447, 47, '2026-08-05', 'Present'),
(448, 48, '2026-08-05', 'Present'),
(449, 49, '2026-08-05', 'Absent'),
(450, 50, '2026-08-05', 'Present');

-- INSERTING MORE RECORDS --
INSERT INTO attendance
(attendance_id, member_id, attendance_date, status)
VALUES
(451, 1, '2026-08-06', 'Present'),
(452, 2, '2026-08-06', 'Present'),
(453, 3, '2026-08-06', 'Absent'),
(454, 4, '2026-08-06', 'Present'),
(455, 5, '2026-08-06', 'Present'),
(456, 6, '2026-08-06', 'Absent'),
(457, 7, '2026-08-06', 'Present'),
(458, 8, '2026-08-06', 'Present'),
(459, 9, '2026-08-06', 'Present'),
(460, 10, '2026-08-06', 'Absent'),

(461, 11, '2026-08-07', 'Present'),
(462, 12, '2026-08-07', 'Absent'),
(463, 13, '2026-08-07', 'Present'),
(464, 14, '2026-08-07', 'Present'),
(465, 15, '2026-08-07', 'Present'),
(466, 16, '2026-08-07', 'Absent'),
(467, 17, '2026-08-07', 'Present'),
(468, 18, '2026-08-07', 'Present'),
(469, 19, '2026-08-07', 'Absent'),
(470, 20, '2026-08-07', 'Present'),

(471, 21, '2026-08-08', 'Present'),
(472, 22, '2026-08-08', 'Present'),
(473, 23, '2026-08-08', 'Absent'),
(474, 24, '2026-08-08', 'Present'),
(475, 25, '2026-08-08', 'Present'),
(476, 26, '2026-08-08', 'Present'),
(477, 27, '2026-08-08', 'Absent'),
(478, 28, '2026-08-08', 'Present'),
(479, 29, '2026-08-08', 'Present'),
(480, 30, '2026-08-08', 'Absent'),

(481, 31, '2026-08-09', 'Present'),
(482, 32, '2026-08-09', 'Present'),
(483, 33, '2026-08-09', 'Present'),
(484, 34, '2026-08-09', 'Absent'),
(485, 35, '2026-08-09', 'Present'),
(486, 36, '2026-08-09', 'Absent'),
(487, 37, '2026-08-09', 'Present'),
(488, 38, '2026-08-09', 'Present'),
(489, 39, '2026-08-09', 'Absent'),
(490, 40, '2026-08-09', 'Present'),

(491, 41, '2026-08-10', 'Present'),
(492, 42, '2026-08-10', 'Absent'),
(493, 43, '2026-08-10', 'Present'),
(494, 44, '2026-08-10', 'Present'),
(495, 45, '2026-08-10', 'Present'),
(496, 46, '2026-08-10', 'Absent'),
(497, 47, '2026-08-10', 'Present'),
(498, 48, '2026-08-10', 'Present'),
(499, 49, '2026-08-10', 'Present'),
(500, 50, '2026-08-10', 'Absent'),

(501, 1, '2026-08-11', 'Present'),
(502, 2, '2026-08-11', 'Absent'),
(503, 3, '2026-08-11', 'Present'),
(504, 4, '2026-08-11', 'Present'),
(505, 5, '2026-08-11', 'Present'),
(506, 6, '2026-08-11', 'Absent'),
(507, 7, '2026-08-11', 'Present'),
(508, 8, '2026-08-11', 'Present'),
(509, 9, '2026-08-11', 'Absent'),
(510, 10, '2026-08-11', 'Present'),

(511, 11, '2026-08-12', 'Present'),
(512, 12, '2026-08-12', 'Present'),
(513, 13, '2026-08-12', 'Absent'),
(514, 14, '2026-08-12', 'Present'),
(515, 15, '2026-08-12', 'Present'),
(516, 16, '2026-08-12', 'Present'),
(517, 17, '2026-08-12', 'Absent'),
(518, 18, '2026-08-12', 'Present'),
(519, 19, '2026-08-12', 'Present'),
(520, 20, '2026-08-12', 'Absent'),

(521, 21, '2026-08-13', 'Present'),
(522, 22, '2026-08-13', 'Present'),
(523, 23, '2026-08-13', 'Present'),
(524, 24, '2026-08-13', 'Absent'),
(525, 25, '2026-08-13', 'Present'),
(526, 26, '2026-08-13', 'Present'),
(527, 27, '2026-08-13', 'Absent'),
(528, 28, '2026-08-13', 'Present'),
(529, 29, '2026-08-13', 'Present'),
(530, 30, '2026-08-13', 'Present'),

(531, 31, '2026-08-14', 'Absent'),
(532, 32, '2026-08-14', 'Present'),
(533, 33, '2026-08-14', 'Present'),
(534, 34, '2026-08-14', 'Present'),
(535, 35, '2026-08-14', 'Absent'),
(536, 36, '2026-08-14', 'Present'),
(537, 37, '2026-08-14', 'Present'),
(538, 38, '2026-08-14', 'Absent'),
(539, 39, '2026-08-14', 'Present'),
(540, 40, '2026-08-14', 'Present'),

(541, 41, '2026-08-15', 'Present'),
(542, 42, '2026-08-15', 'Present'),
(543, 43, '2026-08-15', 'Absent'),
(544, 44, '2026-08-15', 'Present'),
(545, 45, '2026-08-15', 'Present'),
(546, 46, '2026-08-15', 'Absent'),
(547, 47, '2026-08-15', 'Present'),
(548, 48, '2026-08-15', 'Present'),
(549, 49, '2026-08-15', 'Absent'),
(550, 50, '2026-08-15', 'Present'),

(551, 1, '2026-08-16', 'Present'),
(552, 2, '2026-08-16', 'Present'),
(553, 3, '2026-08-16', 'Absent'),
(554, 4, '2026-08-16', 'Present'),
(555, 5, '2026-08-16', 'Present'),
(556, 6, '2026-08-16', 'Present'),
(557, 7, '2026-08-16', 'Absent'),
(558, 8, '2026-08-16', 'Present'),
(559, 9, '2026-08-16', 'Present'),
(560, 10, '2026-08-16', 'Absent'),

(561, 11, '2026-08-17', 'Present'),
(562, 12, '2026-08-17', 'Absent'),
(563, 13, '2026-08-17', 'Present'),
(564, 14, '2026-08-17', 'Present'),
(565, 15, '2026-08-17', 'Absent'),
(566, 16, '2026-08-17', 'Present'),
(567, 17, '2026-08-17', 'Present'),
(568, 18, '2026-08-17', 'Absent'),
(569, 19, '2026-08-17', 'Present'),
(570, 20, '2026-08-17', 'Present'),

(571, 21, '2026-08-18', 'Present'),
(572, 22, '2026-08-18', 'Present'),
(573, 23, '2026-08-18', 'Absent'),
(574, 24, '2026-08-18', 'Present'),
(575, 25, '2026-08-18', 'Present'),
(576, 26, '2026-08-18', 'Absent'),
(577, 27, '2026-08-18', 'Present'),
(578, 28, '2026-08-18', 'Present'),
(579, 29, '2026-08-18', 'Present'),
(580, 30, '2026-08-18', 'Absent'),

(581, 31, '2026-08-19', 'Present'),
(582, 32, '2026-08-19', 'Absent'),
(583, 33, '2026-08-19', 'Present'),
(584, 34, '2026-08-19', 'Present'),
(585, 35, '2026-08-19', 'Present'),
(586, 36, '2026-08-19', 'Absent'),
(587, 37, '2026-08-19', 'Present'),
(588, 38, '2026-08-19', 'Present'),
(589, 39, '2026-08-19', 'Absent'),
(590, 40, '2026-08-19', 'Present'),

(591, 41, '2026-08-20', 'Present'),
(592, 42, '2026-08-20', 'Present'),
(593, 43, '2026-08-20', 'Present'),
(594, 44, '2026-08-20', 'Absent'),
(595, 45, '2026-08-20', 'Present'),
(596, 46, '2026-08-20', 'Present'),
(597, 47, '2026-08-20', 'Absent'),
(598, 48, '2026-08-20', 'Present'),
(599, 49, '2026-08-20', 'Present'),
(600, 50, '2026-08-20', 'Absent'),

(601, 1, '2026-08-21', 'Present'),
(602, 2, '2026-08-21', 'Absent'),
(603, 3, '2026-08-21', 'Present'),
(604, 4, '2026-08-21', 'Present'),
(605, 5, '2026-08-21', 'Absent'),
(606, 6, '2026-08-21', 'Present'),
(607, 7, '2026-08-21', 'Present'),
(608, 8, '2026-08-21', 'Absent'),
(609, 9, '2026-08-21', 'Present'),
(610, 10, '2026-08-21', 'Present');
SELECT * FROM ATTENDANCE; 

-- OTHER SUBQUERIES QUESTIONS --
-- Q1. Trainer-wise Member Count --
SELECT
    t.trainer_name,
    COUNT(m.member_id) AS member_count
FROM trainers t
LEFT JOIN members m
ON t.trainer_id = m.trainer_id
GROUP BY t.trainer_name;

-- Q2. Membership-wise Revenue --
SELECT
    ms.membership_type,
    SUM(p.amount) AS total_revenue
FROM membership ms
JOIN payments p
ON ms.member_id = p.member_id
GROUP BY ms.membership_type;

-- Q2. Membership-wise Revenue --
SELECT
    ms.membership_type,
    SUM(p.amount) AS total_revenue
FROM membership ms
JOIN payments p
ON ms.member_id = p.member_id
GROUP BY ms.membership_type;

-- Q3. Members with High Attendance --
SELECT
    m.member_name,
    COUNT(a.attendance_id) AS attendance_count
FROM members m
JOIN attendance a
ON m.member_id = a.member_id
GROUP BY m.member_name
HAVING COUNT(a.attendance_id) > 10;

-- Q4. Highest Payment --
SELECT MAX(amount) AS highest_payment
FROM payments;

-- Q5. Total Gym Revenue --
SELECT SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Paid';

-- JOINS --
-- Q1. List all members along with their trainer names --
SELECT 
    m.member_name,
    t.trainer_name,
    t.specialization
FROM members m
JOIN trainers t
ON m.trainer_id = t.trainer_id;
 
-- Q2. List members along with their membership type --
SELECT
    m.member_name,
    ms.membership_type,
    ms.start_date,
    ms.end_date,
    ms.fee
FROM members m
JOIN membership ms
ON m.member_id = ms.member_id;

-- Q3. List members and their payment details --
SELECT
    m.member_name,
    p.payment_date,
    p.amount,
    p.payment_method,
    p.payment_status
FROM members m
JOIN payments p
ON m.member_id = p.member_id;

-- Q3. List members and their payment details.
SELECT
    m.member_name,
    p.payment_date,
    p.amount,
    p.payment_method,
    p.payment_status
FROM members m
JOIN payments p
ON m.member_id = p.member_id;

-- Q4. List members and their attendance --
SELECT
    m.member_name,
    a.attendance_date,
    a.status
FROM members m
JOIN attendance a
ON m.member_id = a.member_id;

-- Q5. Get members with their trainer and membership details --
SELECT
    m.member_name,
    t.trainer_name,
    ms.membership_type,
    ms.fee
FROM members m
JOIN trainers t
ON m.trainer_id = t.trainer_id
JOIN membership ms
ON m.member_id = ms.member_id;

-- SUBQUERIES QUESTION --
-- Q1. Find members whose payment is greater than the average payment --
SELECT member_name
FROM members
WHERE member_id IN (
    SELECT member_id
    FROM payments
    WHERE amount > (
        SELECT AVG(amount)
        FROM payments
    )
);

 -- Q2. Find members who have a Gold membership --
SELECT member_name
FROM members
WHERE member_id IN (
    SELECT member_id
    FROM membership
    WHERE membership_type = 'Gold'
);

-- Q3. Find trainers who train more members than the average trainer --
SELECT 
    t.trainer_id,
    t.trainer_name,
    COUNT(m.member_id) AS member_count
FROM trainers t
JOIN members m
ON t.trainer_id = m.trainer_id
GROUP BY t.trainer_id, t.trainer_name
HAVING COUNT(m.member_id) > (
    SELECT AVG(member_count)
    FROM (
        SELECT COUNT(member_id) AS member_count
        FROM members
        GROUP BY trainer_id
    ) AS trainer_counts
);
use gym_management;
show tables;
desc attendance;
desc members;

