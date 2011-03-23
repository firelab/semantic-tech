<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="SEMIP">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="SEMIP">
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_tz9-cFTPEeCqmqCszyTedQ" name="Fire Info Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_56-zklTPEeCqmqCszyTedQ" name="Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_7IoSclTPEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_9jAqMlTPEeCqmqCszyTedQ" name="Modeled"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="__KSKAlTPEeCqmqCszyTedQ" name="Location &amp; Size"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_AfOjslTQEeCqmqCszyTedQ" name="Perimeters"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_Bl3bolTQEeCqmqCszyTedQ" name="Growth Rate"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_DcC6JVTQEeCqmqCszyTedQ" name="Consumption Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_F3Bu0FTQEeCqmqCszyTedQ" name="Plot Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_ILTeklTQEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_JnZpIlTQEeCqmqCszyTedQ" name="Mapped"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_Ke-xYlTQEeCqmqCszyTedQ" name="Modeled"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_MFXgZVTQEeCqmqCszyTedQ" name="Fuel Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_OE7kYlTQEeCqmqCszyTedQ" name="Plot Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_PYh6QlTQEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_RLbbQlTQEeCqmqCszyTedQ" name="Mapped"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_SAez8lTQEeCqmqCszyTedQ" name="Fuel Moisture"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_S94QUlTQEeCqmqCszyTedQ" name="Canopy Fuels"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_VTWS4FTQEeCqmqCszyTedQ" name="Emissions Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_WmNB4lTQEeCqmqCszyTedQ" name="Field Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_X-uUAlTQEeCqmqCszyTedQ" name="Laboratory Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_acPfUlTQEeCqmqCszyTedQ" name="Modeled"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_bIpSUlTQEeCqmqCszyTedQ" name="PM 2.5"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_ch6LUlTQEeCqmqCszyTedQ" name="NOx or SOx"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_d5r2klTQEeCqmqCszyTedQ" name="Carbon/Greenhouse"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_jUBYUlTQEeCqmqCszyTedQ" name="Tracer"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_kXYSwlTQEeCqmqCszyTedQ" name="Non Methane Organic Compounds"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_NluDYlTREeCqmqCszyTedQ" name="Other"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_q1zHsFTQEeCqmqCszyTedQ" name="Plume Rise Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_sb3tolTQEeCqmqCszyTedQ" name="Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_uQshQlTQEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_vQxeMlTQEeCqmqCszyTedQ" name="Modeled"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_zM6joFTQEeCqmqCszyTedQ" name="Smoke Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_0jWLElTQEeCqmqCszyTedQ" name="Point Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_2HCLYlTQEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_4ouFAlTQEeCqmqCszyTedQ" name="Modeled"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_7_mhQlTQEeCqmqCszyTedQ" name="Concentrations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_9InXwlTQEeCqmqCszyTedQ" name="Transport"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_99z6YlTQEeCqmqCszyTedQ" name="Deposition"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_-5kYAlTQEeCqmqCszyTedQ" name="Chemistry"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_AdaJUlTREeCqmqCszyTedQ" name="PM 2.5"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_CFbQAlTREeCqmqCszyTedQ" name="Ozone or Precursors"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_EkIHElTREeCqmqCszyTedQ" name="Visibility"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_FvYZQlTREeCqmqCszyTedQ" name="Carbon/Greenhouse"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_HO5rQlTREeCqmqCszyTedQ" name="Toxics"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_I_Z_klTREeCqmqCszyTedQ" name="Tracer"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_KNVyUlTREeCqmqCszyTedQ" name="Non Methane Organic Compounds"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_NAKfQlTREeCqmqCszyTedQ" name="Other"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_UPArkFTREeCqmqCszyTedQ" name="Fire Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_VcMQYlTREeCqmqCszyTedQ" name="Wildfire"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_WihmUlTREeCqmqCszyTedQ" name="Prescribed Burn"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_Yck4MlTREeCqmqCszyTedQ" name="Agricultural"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_ZrsWslTREeCqmqCszyTedQ" name="Rangeland Burn"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_bKny0lTREeCqmqCszyTedQ" name="Other"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_b-LWslTREeCqmqCszyTedQ" name="Various"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_dWP84lTREeCqmqCszyTedQ" name="Laboratory"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_fYVJYlTREeCqmqCszyTedQ" name="N/A"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_jUA70FTREeCqmqCszyTedQ" name="Fuel Group Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nJmGQlTREeCqmqCszyTedQ" name="Forested System"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_rtERclTREeCqmqCszyTedQ" name="Alpine system"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_szGFYlTREeCqmqCszyTedQ" name="Shrublands"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_uZn-UlTREeCqmqCszyTedQ" name="Grasslands"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_xq1QYlTREeCqmqCszyTedQ" name="Deep Organic"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_4MXqwlTREeCqmqCszyTedQ" name="Other"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_418zQlTREeCqmqCszyTedQ" name="Various"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_6C1dIlTREeCqmqCszyTedQ" name="N/A"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_9QBx4FTREeCqmqCszyTedQ" name="Meterology Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="__0FqElTREeCqmqCszyTedQ" name="Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_A9_4clTSEeCqmqCszyTedQ" name="Modeled"/>
    </packagedElement>
  </packagedElement>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_TthsgEkHEeCjVMwcexSn5g" name="Boolean"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_TthsgUkHEeCjVMwcexSn5g" name="Integer"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_TthsgkkHEeCjVMwcexSn5g" name="String"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_Tthsg0kHEeCjVMwcexSn5g" name="UnlimitedNatural"/>
  <packagedElement xmi:type="sysML:ValueType" xmi:id="_TthshEkHEeCjVMwcexSn5g" name="Real"/>
  <packagedElement xmi:type="sysML:ValueType" xmi:id="_TthshUkHEeCjVMwcexSn5g" name="Complex">
    <ownedAttribute xmi:type="uml:Property" xmi:id="_TthshkkHEeCjVMwcexSn5g" name="realPart" type="_TthshEkHEeCjVMwcexSn5g"/>
    <ownedAttribute xmi:type="uml:Property" xmi:id="_Tthsh0kHEeCjVMwcexSn5g" name="imaginaryPart" type="_TthshEkHEeCjVMwcexSn5g"/>
  </packagedElement>
  <profileApplication xmi:type="uml:ProfileApplication" xmi:id="idProfileApplication">
    <eAnnotations xmi:type="ecore:EAnnotation" xmi:id="idProfileAnnotation" source="http://www.eclipse.org/uml2/2.0.0/UML">
      <references xmi:type="ecore:EPackage" href="../../plugin/org.topcased.modeler.sysml/templates/activitydiagram/profile/SysMLActivityExtensionsProfile.uml#ProfileContentId"/>
    </eAnnotations>
    <appliedProfile xmi:type="uml:Profile" href="../../plugin/org.topcased.modeler.sysml/templates/activitydiagram/profile/SysMLActivityExtensionsProfile.uml#ActivityProfileId"/>
  </profileApplication>
</uml:Model>
