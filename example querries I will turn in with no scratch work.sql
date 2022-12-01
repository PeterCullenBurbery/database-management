/*return all the units named after people*/

select *
from unit;
select * from physical_constant;
select *
from international_system_of_quantities_dimension;
select *
from international_system_of_units_prefixes;
select *
from physical_quantity;
select * from
unit where
epoynmouspeople is not null;
/*select people who have base units named after them*/
select unit.name, epoynmouspeople from unit
where epoynmouspeople is not null and base_unit=1;




/*select people who have derived units named after them*/
select unit.name, epoynmouspeople from unit
where epoynmouspeople is not null and base_unit=0;

/*select units that aren't named after people*/
select unit.name from unit
where epoynmouspeople is null;

/*sort units with a time exponent by their time exponent descending*/
select unit.name,time_dimension_exponent from unit
where time_dimension_exponent!=0
order by time_dimension_exponent desc;

/*sort units with a length exponent by their length exponent ascending*/
select unit.name,length_dimension_exponent from unit
where length_dimension_exponent!=0
order by length_dimension_exponent asc;

/*sort units with a mass exponent by their mass exponent descending*/
select unit.name,mass_dimension_exponent from unit
where mass_dimension_exponent!=0
order by mass_dimension_exponent desc;
/*sort units with an electric current exponent by their electric current exponent descending*/
select unit.name,electric_current_dimension_exponent from unit
where electric_current_dimension_exponent!=0
order by electric_current_dimension_exponent desc;

/*sort units with a thermodynamic temperature exponent in descending order*/
select unit.name,thermodynamic_temperature_dimension_exponent from unit
where thermodynamic_temperature_dimension_exponent!=0
order by thermodynamic_temperature_dimension_exponent desc;

/*sort units with an amount of substance exponent descending*/
select unit.name,amount_of_substance_dimension_exponent from unit
where amount_of_substance_dimension_exponent!=0
order by amount_of_substance_dimension_exponent desc;
/*sort units with a luminous intensity exponent in descending order*/
select unit.name,luminous_intensity_dimension_exponent from unit
where luminous_intensity_dimension_exponent!=0
order by luminous_intensity_dimension_exponent desc;

/*find the standard deviation of the mass exponent*/
select stddev(unit.time_dimension_exponent) from unit;


/*find the standard deviation of the electric current exponent*/
select stddev(unit.electric_current_dimension_exponent) from unit;

select * from dimensional_analysis.international_system_of_quantities_dimension;

SELECT `international_system_of_quantities_dimension`.`dimension_name`,`international_system_of_quantities_dimension`.`international_system_of_quantities_canonical_dimensional_symbol` as dimension_symbol,unit.name,unit.symbol,international_system_of_quantities_dimension.international_system_of_units_base_unit, unit.idunit
FROM unit
INNER JOIN international_system_of_quantities_dimension ON international_system_of_quantities_dimension.international_system_of_units_base_unit=unit.idunit;

select * from international_system_of_units_prefixes;

/*sort by the base 10 log*/
select prefix_name,prefix_symbol,base_10_logarithm_of_multiplier from international_system_of_units_prefixes
order by base_10_logarithm_of_multiplier desc;
/*sort by abs*/
select prefix_name,prefix_symbol,base_10_logarithm_of_multiplier,abs(base_10_logarithm_of_multiplier) as absolute_value from international_system_of_units_prefixes
order by absolute_value desc;

select * from `dimensional_analysis`.`international_system_of_units_prefixes`;

