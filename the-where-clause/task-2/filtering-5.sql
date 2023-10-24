--Return only the address of addresses in either the Alberta or QLD district
SELECT address FROM address

WHERE  
    district = 'Alberta'
    OR district = 'QLD';