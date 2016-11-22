
<SCRIPT LANGUAGE="JavaScript"><!--
function replace(string) {
	var strValue=string, newStr
	if (strValue=='Enter Vendor Name') {
		newStr='';
	}else{
		newStr=strValue;
	}
	return newStr;
}
function replaceTIN(string) {
	var strValue=string, newStr
	if (strValue=='Enter Vendor FEIN') {
		newStr='';
	}else{
		newStr=strValue;
	}
	return newStr;
}
//-->
</SCRIPT>

<!--- <div id="heading"><h1>prevailing wage inquiries</h1></div> --->

 <div id="supportingText">
		<!---<div id="explanation"> --->
			<h3><span>Welcome to Prevailing Wage Inquiries Site</span></h3>
			<p class="p1"><span>Welcome to the Comptroller’s Office Prevailing Wage Web Site.  This page will provide you with information concerning recipients of state construction contracts and grants subject to the provisions of the Illinois Prevailing Wage Act.  To enhance compliance with this Act, the Comptroller issued an Executive Order imposing standards on contracts and grants filed by state agencies.  This web page presents information reported to our Office in the hope that it will foster greater public oversight and aid enforcement of the Act.  You may search for information by Vendor Name, FEIN Number or by County. </span></p>
			<p class="p2"><span>In order to use this web site most effectively, you will need to keep in mind the following considerations.</span></p>
			<p class="p2"><span>
			<ul>
			<li>This page does not include all contracts subject to the Illinois Prevailing Wage Act.  Many public works projects receive no state funding, but are still subject to the Illinois Prevailing Wage Act. Further, to a great extent, our Office is dependent on other State agencies to provide us with information about projects that do receive state funding. </li>
			<li>As stated previously, the prevailing wage information that appears on this site is reported to us by other State agencies that enter into contracts with various vendors.  Our Office requires that the agency and the vendor attest to the veracity of the information in the contract with signatures and certifications.   When the contract is received in this Office, it is subjected to various audit procedures.  However, we are not empowered to perform an in depth certification.  The contracting agency and their auditors have that responsibility.</li>
			<LI>Currently, our Office requires that activity be reported to us for a maximum of 8 counties with corresponding location and description information. If a contract encompasses more than 8 counties or is Statewide, your area of interest may not be displayed.</LI>
<LI>The contractor that you may see doing the actual work may be a subcontractor of the vendor that has the contract with the State agency.</LI>
<LI>The contractor name that you see displayed at the work site may not be the name that appears on the contract and that our Office would consequently have on file.</LI>
<LI>If you search by county, only that county will be presented in those instances where the actual contract encompasses multiple counties.</LI>
<LI>If you search by vendor name, only vendors with prevailing wage contracts appear on the selection list not the complete State vendor file.</LI>
<LI>The available list of contracts begins with those filed with our Office during fiscal year 2006.</LI>
<LI>The contracts listed are the original documents filed with our Office.  Any amendments or subsequent modifications are not shown.</LI>
			</ul>
			</span>
			</p>
			<p CLASS="p2"><span>If you have any questions concerning the information on this site, please <a href="http://www.illinoiscomptroller.com/comptroller/?LinkServID=4F7BB0A2-C128-4270-9D1ECC8FC4D4FAC0">contact our office</a>.


			</span></p>


<TABLE WIDTH="300" ALIGN="center">
  <TR>
    <TH>Enter Vendor Name</TH>
  </TR>
  <TR ALIGN="center">
    <TD ALIGN="center">Please type the Vendor Name in whole or in
      part. </TD>
   </TR>
	<TR>
	<TD ALIGN="center"><cfoutput>
	  <FORM ACTION="#buildURL('main.vendorname')#" METHOD="post" NAME="form1">
</cfoutput>
		<center><INPUT TYPE="text" NAME="vendor_Name" VALUE="Enter Vendor Name" onFocus="this.value=replace(this.value)">

		<BR>
		<INPUT TYPE="submit" NAME="submit" VALUE="Submit!"></center>
      </FORM></TD></TR>
  </TABLE>

 <TABLE WIDTH="300" ALIGN="center">
  <TR>
   <TH>Enter FEIN Number</TH>
   </TR>
   <TR ALIGN="center">
    <TD ALIGN="center">Please type the 9 digit FEIN number of the Vendor.</TD>
   </TR>
	<TR>
    <TD ALIGN="center">
	 <FORM ACTION="index.cfm" METHOD="post" NAME="form2">

		<center><INPUT TYPE="password" NAME="vendor_TIN" VALUE="" onFocus="this.value=replaceTIN(this.value)">

		<INPUT TYPE="Hidden" NAME="fuseaction" VALUE="getTIN">
		<BR>
		<INPUT TYPE="submit" NAME="submit" VALUE="Submit!">
      </FORM></center></TD>
	</TR>
</TABLE>

<!-- County Select -->
<TABLE WIDTH="300" ALIGN="center">
<TR>
  <TH>Enter County</TH>
 </TR>
 <TR>
	<TD ALIGN="center">
		<center>
      <FORM ACTION="index.cfm" METHOD="post" NAME="form3">
        <INPUT TYPE="hidden" NAME="fuseaction" VALUE="getCounty">
		    <SELECT NAME="county_code">
			     <OPTION VALUE="Select" SELECTED>Select County...</OPTION>
			       <!---<CFOUTPUT QUERY="qryCountyList">
			         <OPTION VALUE="#Code#">#Name#</option>
			       </CFOUTPUT>--->
		    </SELECT>
		<BR>
		<INPUT TYPE="submit" NAME="submit" VALUE="Submit!">
      </FORM></center>
	</TD>
  </TR>
</TABLE>

</td>
</tr>

</table>
 </div>
