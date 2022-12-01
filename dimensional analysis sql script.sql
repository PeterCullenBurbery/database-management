create database if not exists dimensional_analysis;
use dimensional_analysis;

CREATE TABLE `dimensional_analysis`.`unit` (
  `idunit` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `base_unit` BIT NULL/*the value is 1 if the unit is a base unit in the International System of Units and 0 is the unit is a coherent derived unit with a 
  special name*/,
  `symbol` VARCHAR(45) NULL /*the data for the symbol for non English characters like the greek letter omega for ohm is the code needed for Mathematica*/,
  PRIMARY KEY (`idunit`))
COMMENT = 'there are seven base units and twenty two derived units with special names. This makes 29 units in total.';
ALTER TABLE `dimensional_analysis`.`unit` 
CHANGE COLUMN `idunit` `idunit` INT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `dimensional_analysis`.`unit` 
ADD COLUMN `time_dimension_exponent` INT NULL DEFAULT 0 AFTER `symbol`,
ADD COLUMN `length_dimension_exponent` INT NULL DEFAULT 0 AFTER `time_dimension_exponent`,
ADD COLUMN `mass_dimension_exponent` INT NULL DEFAULT 0 AFTER `length_dimension_exponent`,
ADD COLUMN `electric_current_dimension_exponent` INT NULL DEFAULT 0 AFTER `mass_dimension_exponent`,
ADD COLUMN `thermodynamic_temperature_dimension_exponent` INT NULL DEFAULT 0 AFTER `electric_current_dimension_exponent`,
ADD COLUMN `amount_of_substance_dimension` INT NULL DEFAULT 0 AFTER `thermodynamic_temperature_dimension_exponent`;


ALTER TABLE `dimensional_analysis`.`unit` 
ADD COLUMN `luminous_intensity_dimension` INT NULL DEFAULT 0 AFTER `amount_of_substance_dimension`;
ALTER TABLE `dimensional_analysis`.`unit` 
CHANGE COLUMN `luminous_intensity_dimension` `luminous_intensity_dimension_exponent` INT NULL DEFAULT '0';
ALTER TABLE `dimensional_analysis`.`unit` 
CHANGE COLUMN `amount_of_substance_dimension` `amount_of_substance_dimension_exponent` INT NULL DEFAULT 0;
ALTER TABLE `dimensional_analysis`.`unit` 
DROP COLUMN `luminous_intensity_dimension`;
ALTER TABLE `dimensional_analysis`.`unit` 
ADD COLUMN `epoynmouspeople` VARCHAR(255) NULL AFTER `luminous_intensity_dimension_exponent`,
CHANGE COLUMN `symbol` `symbol` VARCHAR(255) NULL DEFAULT NULL ;


INSERT INTO `dimensional_analysis`.`unit`
(
`name`,
`base_unit`,
`symbol`)
VALUES
(
"second",
1,
"s");
INSERT INTO `dimensional_analysis`.`unit` (`idunit`, `name`, `base_unit`, `symbol`) VALUES (2, 'meter', 1, 'm');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`, `name`, `base_unit`, `symbol`)  VALUES (3, 'kilogram', 1, 'kg');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`, `name`, `base_unit`, `symbol`)  VALUES (4, 'ampere', 1, 'A');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`, `name`, `base_unit`, `symbol`)  VALUES (5, 'kelvin', 1, 'K');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`, `name`, `base_unit`, `symbol`)  VALUES (6, 'mole', 1, 'mol');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`, `name`, `base_unit`, `symbol`)  VALUES (7, 'candela', 1, 'cd');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (8,'radian', 0, 'rd');
UPDATE `dimensional_analysis`.`unit` SET `symbol` = 'rad' WHERE (`idunit` = '8');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (9,'steradian', 0, 'sr');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (10,'hertz', 0, 'Hz');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (11,'newton', 0, 'N');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (12,'pascal', 0, 'Pa');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (13,'joule', 0, 'J');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (14,'watt', 0, 'W');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (15,'coulomb', 0, 'C');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (16,'volt', 0, 'V');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (17,'farad', 0, 'F');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (18,'ohm', 0, '\\[CapitalOmega]');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (19,'siemens', 0, 'S');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (20,'weber', 0, 'Wb');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (21,'tesla', 0, 'T');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (22,'henry', 0, 'H');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (23,'degree Celsius', 0, '°C');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (24,'lumen', 0, 'lm');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (25,'lux', 0, 'lx');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (26,'becquerel', 0, 'Bq');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (27,'gray', 0, 'Gy');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (28,'sievert', 0, 'Sv');
INSERT INTO `dimensional_analysis`.`unit` (`idunit`,`name`, `base_unit`, `symbol`) VALUES (29,'katal', 0, 'kat');

UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '1' WHERE (`idunit` = '1');
UPDATE `dimensional_analysis`.`unit` SET `length_dimension_exponent` = '1' WHERE (`idunit` = '2');
UPDATE `dimensional_analysis`.`unit` SET `mass_dimension_exponent` = '1' WHERE (`idunit` = '3');
UPDATE `dimensional_analysis`.`unit` SET `electric_current_dimension_exponent` = '1' WHERE (`idunit` = '4');
UPDATE `dimensional_analysis`.`unit` SET `thermodynamic_temperature_dimension_exponent` = '1' WHERE (`idunit` = '5');
UPDATE `dimensional_analysis`.`unit` SET `amount_of_substance_dimension` = '1' WHERE (`idunit` = '6');
UPDATE `dimensional_analysis`.`unit` SET `luminous_intensity_dimension_exponent` = '1' WHERE (`idunit` = '7');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-1' WHERE (`idunit` = '10');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `length_dimension_exponent` = '1', `mass_dimension_exponent` = '1' WHERE (`idunit` = '11');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `length_dimension_exponent` = '-1', `mass_dimension_exponent` = '1' WHERE (`idunit` = '12');

UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `length_dimension_exponent` = '2', `mass_dimension_exponent` = '1' WHERE (`idunit` = '13');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-3', `length_dimension_exponent` = '2', `mass_dimension_exponent` = '1' WHERE (`idunit` = '14');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '1', `electric_current_dimension_exponent` = '1' WHERE (`idunit` = '15');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-3', `length_dimension_exponent` = '2', `mass_dimension_exponent` = '1', `electric_current_dimension_exponent` = '-1' WHERE (`idunit` = '16');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '4', `length_dimension_exponent` = '-2', `mass_dimension_exponent` = '-1', `electric_current_dimension_exponent` = '2' WHERE (`idunit` = '17');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-3', `length_dimension_exponent` = '2', `mass_dimension_exponent` = '1', `electric_current_dimension_exponent` = '-2' WHERE (`idunit` = '18');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '3', `length_dimension_exponent` = '-2', `mass_dimension_exponent` = '-1', `electric_current_dimension_exponent` = '2' WHERE (`idunit` = '19');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `length_dimension_exponent` = '2', `mass_dimension_exponent` = '1', `electric_current_dimension_exponent` = '-1' WHERE (`idunit` = '20');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `mass_dimension_exponent` = '1', `electric_current_dimension_exponent` = '-1' WHERE (`idunit` = '21');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `length_dimension_exponent` = '2', `mass_dimension_exponent` = '1', `electric_current_dimension_exponent` = '-2' WHERE (`idunit` = '22');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-1' WHERE (`idunit` = '26');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `length_dimension_exponent` = '2' WHERE (`idunit` = '27');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-2', `length_dimension_exponent` = '2' WHERE (`idunit` = '28');
UPDATE `dimensional_analysis`.`unit` SET `time_dimension_exponent` = '-1', `amount_of_substance_dimension_exponent` = '1' WHERE (`idunit` = '29');
UPDATE `dimensional_analysis`.`unit` SET `length_dimension_exponent` = '-2', `luminous_intensity_dimension_exponent` = '1' WHERE (`idunit` = '25');
UPDATE `dimensional_analysis`.`unit` SET `thermodynamic_temperature_dimension_exponent` = '1' WHERE (`idunit` = '23');
UPDATE `dimensional_analysis`.`unit` SET `luminous_intensity_dimension_exponent` = '1' WHERE (`idunit` = '24');

UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'André-Marie Ampère' WHERE (`idunit` = '4');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'William Thmoson, 1st Baron Kelvin' WHERE (`idunit` = '5');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Heinrich Hertz' WHERE (`idunit` = '10');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Isaac Newton' WHERE (`idunit` = '11');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Blaise Pascal' WHERE (`idunit` = '12');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'James Prescott Joule' WHERE (`idunit` = '13');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'James Watt' WHERE (`idunit` = '14');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Charles-Augustin de Coulomb' WHERE (`idunit` = '15');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Alessandro Volta' WHERE (`idunit` = '16');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Michael Faraday' WHERE (`idunit` = '17');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Geog Ohm' WHERE (`idunit` = '18');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Werner von Siemens' WHERE (`idunit` = '19');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Wilhem Eduard Weber' WHERE (`idunit` = '20');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Nikola Tesla' WHERE (`idunit` = '21');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Joseph Henry' WHERE (`idunit` = '22');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Anders Celsius' WHERE (`idunit` = '23');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Antoine Henri Becquerel' WHERE (`idunit` = '26');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Louis Harold Gray' WHERE (`idunit` = '27');
UPDATE `dimensional_analysis`.`unit` SET `epoynmouspeople` = 'Rolf Maximilian Sievert' WHERE (`idunit` = '28');

CREATE TABLE if not exists `dimensional_analysis`.`physical_constant` (
  `idphysical_constant` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `value` TEXT(512) NULL/* the value is the input in Mathematica's quantity framework*/,
  `symbol` VARCHAR(45) NULL/*the symbol is the TeX input needed*/,
  PRIMARY KEY (`idphysical_constant`));




INSERT INTO `dimensional_analysis`.`physical_constant` (`idphysical_constant`, `name`, `value`, `symbol`) VALUES (1,'unperturbed hyperfine transition frequency of the cesium-133 atom' ,  'Quantity[\"Cesium133HyperfineSplittingFrequency\"]', '\\Delta \\nu_{Cs}');
INSERT INTO `dimensional_analysis`.`physical_constant` (`idphysical_constant`, `name`, `value`, `symbol`) VALUES (2, 'speed of light in vacuum as a proper length', 'Quantity[\"SpeedOfLight\"]', 'c');
INSERT INTO `dimensional_analysis`.`physical_constant` (`idphysical_constant`, `name`, `value`, `symbol`) VALUES (3, 'Planck constant', 'Quantity[\"PlanckConstant\"]', 'h');
INSERT INTO `dimensional_analysis`.`physical_constant` (`idphysical_constant`, `name`, `value`, `symbol`) VALUES (4,'elementary charge and coupling strenth of the electromagnetic force', 'Quantity[\"ElementaryCharge\"]', 'e');
INSERT INTO `dimensional_analysis`.`physical_constant` (`idphysical_constant`, `name`, `value`, `symbol`) VALUES (5,'Boltzmann constant and relation between temperature and energy or entropy and quantum mechanically accessible states', 'Quantity[\"BoltzmannConstant\"]', 'k');
INSERT INTO `dimensional_analysis`.`physical_constant` (`idphysical_constant`, `name`, `value`, `symbol`) VALUES (6,'Avogadro constant as a relation between amount of substance and counting entities', 'Quantity[\"AvogadroConstant\"]', 'N_A');
INSERT INTO `dimensional_analysis`.`physical_constant` (`idphysical_constant`, `name`, `value`, `symbol`) VALUES (7,'luminous intensity of monochromatic radiation of frequency 540*10^12 Hz', 'Quantity[\"MonochromaticRadiation540THzLuminousEfficacy\"]', 'K_{cd}');





CREATE TABLE `dimensional_analysis`.`international_system_of_quantities_dimension` (
  `idinternational_system_of_quantities_dimension` INT NOT NULL,
  `dimension_name` VARCHAR(255) NULL,
  `international_system_of_quantities_canonical_dimensional_symbol` VARCHAR(255) NULL/*the symbol is the Mathematica code to replicate it*/,
  `international_system_of_units_base_unit` int NULL,
  `international_system_of_units_physical_constant` int NULL,
  PRIMARY KEY (`idinternational_system_of_quantities_dimension`));

ALTER TABLE international_system_of_quantities_dimension
ADD FOREIGN KEY (international_system_of_units_base_unit) REFERENCES unit(idunit);

ALTER TABLE international_system_of_quantities_dimension
ADD FOREIGN KEY (international_system_of_units_physical_constant) REFERENCES physical_constant(idphysical_constant);


INSERT INTO `dimensional_analysis`.`international_system_of_quantities_dimension` (`idinternational_system_of_quantities_dimension`, `dimension_name`, `international_system_of_quantities_canonical_dimensional_symbol`, `international_system_of_units_base_unit`, `international_system_of_units_physical_constant`) VALUES (1, 'time', 'T', '1', '1');
INSERT INTO `dimensional_analysis`.`international_system_of_quantities_dimension` (`idinternational_system_of_quantities_dimension`, `dimension_name`, `international_system_of_quantities_canonical_dimensional_symbol`, `international_system_of_units_base_unit`, `international_system_of_units_physical_constant`) VALUES (2, 'length', 'L', '2', '2');
INSERT INTO `dimensional_analysis`.`international_system_of_quantities_dimension` (`idinternational_system_of_quantities_dimension`, `dimension_name`, `international_system_of_quantities_canonical_dimensional_symbol`, `international_system_of_units_base_unit`, `international_system_of_units_physical_constant`) VALUES (3, 'mass', 'M', '3', '3');
INSERT INTO `dimensional_analysis`.`international_system_of_quantities_dimension` (`idinternational_system_of_quantities_dimension`, `dimension_name`, `international_system_of_quantities_canonical_dimensional_symbol`, `international_system_of_units_base_unit`, `international_system_of_units_physical_constant`) VALUES (4, 'electric current', 'I', '4', '4');
INSERT INTO `dimensional_analysis`.`international_system_of_quantities_dimension` (`idinternational_system_of_quantities_dimension`, `dimension_name`, `international_system_of_quantities_canonical_dimensional_symbol`, `international_system_of_units_base_unit`, `international_system_of_units_physical_constant`) VALUES (5, 'absolute thermodynamic temperature', '\\[CapitalTheta]', '5', '5');
INSERT INTO `dimensional_analysis`.`international_system_of_quantities_dimension` (`idinternational_system_of_quantities_dimension`, `dimension_name`, `international_system_of_quantities_canonical_dimensional_symbol`, `international_system_of_units_base_unit`, `international_system_of_units_physical_constant`) VALUES (6, 'amount of substance', 'N', '6', '6');
INSERT INTO `dimensional_analysis`.`international_system_of_quantities_dimension` (`idinternational_system_of_quantities_dimension`, `dimension_name`, `international_system_of_quantities_canonical_dimensional_symbol`, `international_system_of_units_base_unit`, `international_system_of_units_physical_constant`) VALUES (7, 'luminous intensity of monochromatic radiation', 'J', '7', '7');


CREATE TABLE `dimensional_analysis`.`international_system_of_units_prefixes` (
  `idinternational_system_of_units_prefixes` INT NOT NULL,
  `prefix_name` VARCHAR(255) NULL,
  `prefix_symbol` VARCHAR(255) NULL,
  `base_10_logarithm_of_multiplier` INT NULL,
  PRIMARY KEY (`idinternational_system_of_units_prefixes`));
  
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (1,'quetta', 'Q', '30');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (2,'quecto', 'q', '-30');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (3,'ronna', 'R', '27');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (4,'ronto', 'r', '-27');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (5,'yotta', 'Y', '24');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (6,'yocto', 'y', '-24');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (7,'zetta', 'Z', '21');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (8,'zepto', 'z', '-21');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (9,'exa', 'E', '18');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (10,'atto', 'a', '-18');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (11,'peta', 'P', '15');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (12,'femto', 'f', '-15');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (13,'tera', 'T', '12');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (14,'pico', 'p', '-12');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (15,'giga', 'G', '9');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (16,'nano', 'n', '-9');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (17,'mega', 'M', '6');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (18,'micro', '\\[Mu]', '-6');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (19,'kilo', 'k', '3');
INSERT INTO `dimensional_analysis`.`international_system_of_units_prefixes` (`idinternational_system_of_units_prefixes`,`prefix_name`, `prefix_symbol`, `base_10_logarithm_of_multiplier`) VALUES (20,'milli', 'm', '-3');

CREATE TABLE `dimensional_analysis`.`physical_quantity` (
  `idphysical_quantity` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `physical_quantity_lower_bound` INT NULL,
   `physical_quantity_upper_bound` INT NULL,
  PRIMARY KEY (`idphysical_quantity`));

alter table physical_quantity
add foreign key (physical_quantity_lower_bound) references international_system_of_units_prefixes(idinternational_system_of_units_prefixes);

alter table physical_quantity
add foreign key (physical_quantity_upper_bound) references international_system_of_units_prefixes(idinternational_system_of_units_prefixes);

INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_upper_bound`) VALUES ('1', 'acceleration', '19');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('2', 'air pressure', '19');

INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`) VALUES ('4', 'actigraph frequency');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`) VALUES ('5', 'radar altimeter altitude');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('6', 'atomic force microscope width', '16', '18');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('7', 'atomic force microscope height', '16', '18');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('8', 'capacitance meter capacitance', '16', '18');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('9', 'depth gauge pressure', '19', '17');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('10', 'quartz fiber dosimeter', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('11', 'extensometer length', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('12', 'Gardon gauge wavelength', '16');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('13', 'gaussmeter magnetic flux density', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('14', 'Hall effect sensor magnetic flux density', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('15', 'Hall effect sensor electric potential difference', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('16', 'Hegman gauge diameter', '18');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('17', 'hot-filament ionization gauge pressure', '16', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_upper_bound`) VALUES ('18', 'laser rangefinder distance', '19');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('19', 'fluxgate magnetometer magnetic flux density', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('20', 'mass flow meter mass flow rate', '20', '19');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('21', 'McLeod gauge pressure', '18', '19');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_upper_bound`) VALUES ('22', 'megohmmeter resistance', '17');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('23', 'microbolometer wavelength', '18');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_upper_bound`) VALUES ('24', 'microphone frequency', '19');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('25', 'microwave radiometer frequency', '15', '13');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('26', 'optical power meter radiant power', '16', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`, `physical_quantity_upper_bound`) VALUES ('27', 'personal RF safety monitor frequency', '17', '15');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`) VALUES ('28');
UPDATE `dimensional_analysis`.`physical_quantity` SET `name` = 'piezeoelectric sensor acceleration' WHERE (`idphysical_quantity` = '1');
UPDATE `dimensional_analysis`.`physical_quantity` SET `name` = 'pressure gauge pressure', `physical_quantity_lower_bound` = '16', `physical_quantity_upper_bound` = '19' WHERE (`idphysical_quantity` = '28');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('29', 'seismometer frequency', '20');
INSERT INTO `dimensional_analysis`.`physical_quantity` (`idphysical_quantity`, `name`, `physical_quantity_lower_bound`) VALUES ('30', 'salinometer mass density', '20');

