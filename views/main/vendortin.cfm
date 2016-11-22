<!--- <cfoutput> --->

<!--- <cfif qryVendorSearchResults.recordCount> --->


<div id="content"><p>Records have been found. Please look below and click the Contract Listing button next to the Vendor whose information you seek.</p>
<!--- Pagination --->
<cfparam name="StartRow" default="1">
<cfParam name="variables.MaxRows" default="20">
<table>
<tr><th>Vendor</th><th>Command</th></tr>
<!--- <cfoutput query="qryVendorSearchResults" startrow="#StartRow#" maxrows="20"> --->
<tr><td>#Vendor_Name#</td>
<form action="index.cfm" method="post">
<input type="Hidden" name="fuseaction" value="ContractList">
<input type="Hidden" name="Vendor_Name" value="#Vendor_Name#">
<input type="Hidden" name="Vendor_TIN" value="#vendor_TIN#">
<td><input type="submit" value="Contract Listing"></td>
</form>

</td></tr>
</table>
<!--- <cfset variables.totRows = startRow + variables.MaxRows> --->

<!--- <cfif StartRow gt 20> --->
<a href="index.cfm?fuseaction=getVendorName&StartRow=1&Vendor_Name=#attributes.Vendor_Name#">First 20</a> |||
<!--- <cfset variables.Prev20 = variables.totRows - 40> --->
<!--- <a href="index.cfm?fuseaction=getVendorName&StartRow=#variables.prev20#&Vendor_Name=#attributes.Vendor_Name#">Prev 20</a> ||| --->
<!--- </cfif> --->
<!---
<cfif qryVendorSearchResults.recordCount gt variables.totRows>
 --->
<a href="index.cfm?fuseaction=getVendorName&StartRow=#variables.totRows#&Vendor_Name=#attributes.Vendor_Name#">Next 20</a> |||
<!--- <cfset variables.startRow=qryVendorSearchREsults.recordCount-20> --->
<a href="index.cfm?fuseaction=getVendorName&StartRow=#variables.startRow#&Vendor_Name=#attributes.Vendor_Name#">End of list</a>
<!--- <cfelse>

</cfif> --->

<!--- <cfelse> --->

<div id="notFound"><p>Sorry, no prevailing wage contracts have been reported to our Office for that Vendor.</p></div>

<!--- </cfif> --->
</div>
<!--- </cfoutput> --->
