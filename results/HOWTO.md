#  Data visualization - How To

## 1. Average Internet Access of a world countries
- `Visualization Type`: **"Region Map"**
- `Index`: **"internetaccess"**
- `Value`: **"Average Internet Access(2001 - 2023)"**
- `Field`: **"Country Code"**
- `Join Field`: **"Three letter abbreviation"**

## 2. Net Migration of a Czech Republic 
- `Visualization Type`: **"Line"**
- `Index`: **"netmigration"**
- `X-Axis`: **"year"**
- `Y-Axis`: **"Max Net Migration"**
- `filter`: **"Country Code:CZE"**

## 3. GDP of a world countries in 2023
- `Visualization Type`: **"Pie Chart"**
- `Index`: **"gdp"**
- `Slice Size`: **"Sum of GDP"**
- `Field`: **"Country Name"** + `Order By`: **"Sum of GDP"**

## 4. Electricity Access of Oceania countries
- `Visualization Type`: **"Heat Map"**
- `Index`: **"electricityaccess"**
- `X-Axis`: **"Year"**
- `Y-Axis`: **"Country Name"**
- `Value`: **"Average Electricity Access"**
- `Filter`: **"Country Code:["ASM, AUS, CXR, COK, FJI, PYF, GUM, KIR, MHL, FSM, NRU, NCL, NZL, NIU, NFK, MNP, PLW, PNG, PCN, WSM, SLB, TLS, TKL, TON, TUV, VUT, WLF"]"**

## 5. USA Population by Age Group, Sex nd Year
- `Visualization Type`: **"Vertial Bar"**
- `Index`: **"population"**
- `X-Axis`: **"Year"** + `Split Chart`: **"Age Group"** + `Split Series`: **"Gender"** 
- `Y-Axis`: **"Sum of Population"**
- `filter`: **"Country Code:USA"**

## 6. Average employment(2001 - 2016) of a world countries
- `Visualization Type`: **"Tag Cloud"**
- `Index`: **"employment"**
- `Tags`: **"Country Name"**
- `Tag Size`: **"Average Employment"**
- `Size`: **"25"**

## 7. Average Internet Access in Europe(2001 - 2023)
- `Visualization Type`: **"Vertial Bar"**
- `Index`: **"internetaccess"**
- `X-Axis`: **"Year"**
- `Y-Axis`: **"Average Internet Access"**
- `filter`: **"Country Code:[AUT, BEL, BGR, HRV, CYP, CZE, DNK, EST, FIN, FRA, DEU, GRC, HUN, IRL, ITA, LVA, LTU, LUX, MLT, NLD, POL, PRT, ROU, SVK, SVN, ESP, SWE, GBR"]"**

## 8. Average Electricity Access of a world countries
- `Visualization Type`: **"Region Map"**
- `Index`: **"electricityaccess"**
- `Value`: **"Average Electricity Access(2001 - 2022)"**
- `Field`: **"Country Code"**
- `Join Field`: **"Three letter abbreviation"**