
class Arealist {
 // final String suburbsName;
  //final int localNewCases;
  //final int localTotalCases;
  final String docName;


  Arealist({
    //this.suburbsName,
    //this.localNewCases,
   // this.localTotalCases,
   this.docName,

  });

  Arealist.fromJson(Map<String, dynamic> parsedJson)
      :// suburbsName = parsedJson['Sname'];
       // localNewCases = parsedJson['local_new_cases'],
      //  localTotalCases = parsedJson['local_total_cases'];
      docName = parsedJson['name'];

}
