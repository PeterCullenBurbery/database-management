/*return all the units named after people*/
select * from
unit where
epoynmouspeople is not null;
/*count how many base units are named after people*/
select count(*) from unit
where epoynmouspeople is not null and base_unit=1;
/*select people who have base units named after them*/
select unit.name, epoynmouspeople from unit
where epoynmouspeople is not null and base_unit=1;

/*count how many derived units are named after people*/
select count(*) from unit
where epoynmouspeople is not null and base_unit=0;
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
select prefix_name,prefix_symbol,abs(base_10_logarithm_of_multiplier) as absolute_value from international_system_of_units_prefixes
order by absolute_value desc;

/*select prefixes that match*/
select prefix_name,prefix_symbol,abs(base_10_logarithm_of_multiplier) as absolute_value from international_system_of_units_prefixes
order by absolute_value desc;

SELECT prefix_name,prefix_symbol,abs(base_10_logarithm_of_multiplier) as absolute_value
from international_system_of_units_prefixes

WHERE EXISTS (SELECT ProductName FROM international_system_of_units_prefixes WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);
select *
from international_system_of_units_prefixes
where substr(prefix_name,1,1)="q";
select *
from international_system_of_units_prefixes
where substr(prefix_name,1,1)="k";
select count(*)
from international_system_of_units_prefixes
where substr(prefix_name,1,1)="q";
select count(*)
from international_system_of_units_prefixes
where substr(prefix_name,1,1)="k";
select count(*)
from international_system_of_units_prefixes
where substr(prefix_name,1,1)=lower("Q");
select count(*)
from international_system_of_units_prefixes
where substr(prefix_name,1,1)=substr("quetta",1,1);
select count(*)
from international_system_of_units_prefixes
where substr(prefix_name,1,1)=substr("femto",1,1);
select prefix_name as outer_prefix_name
from international_system_of_units_prefixes
where (select count(*)
from international_system_of_units_prefixes
where substr(prefix_name,1,1)=substr(prefix_name,1,1))=2;

SELECT `international_system_of_units_prefixes`.`idinternational_system_of_units_prefixes`,
`international_system_of_units_prefixes`.,
`international_system_of_units_prefixes`.`idinternational_system_of_units_prefixes`
from `dimensional_analysis`.`international_system_of_units_prefixes`
INNER JOIN international_system_of_quantities_dimension ON international_system_of_quantities_dimension.international_system_of_units_base_unit=unit.idunit;
