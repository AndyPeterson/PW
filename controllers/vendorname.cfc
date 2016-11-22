component accessors=true {
    property greetingService;
    function default( struct rc ) {
        param name="rc.name" default="anonymous";
        rc.name = variables.greetingService.greet( rc.name );
    }

    function getVendorName () {
      qryResult=queryExecute("
      SELECT a.VENDOR_NAME, a.VENDOR_TIN
      FROM wh.VENDOR AS a INNER JOIN wh.pw_contract AS b
      ON a.VENDOR_TIN = b.VENDOR
      WHERE
      a.VENDOR_NAME = 'IBM CORPORATION'
      /*
      a.Vendor_Name BETWEEN <cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.strVendor_Name#" />
       AND <cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.LastStr#" />
       */
      GROUP BY VENDOR_NAME, VENDOR_TIN
      ORDER BY VENDOR_NAME
      ")
    }
}
