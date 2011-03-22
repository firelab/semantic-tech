<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="Semip2">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="Semip2">
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_heDqUFTSEeCqmqCszyTedQ" name="Fire Info Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_heDqUVTSEeCqmqCszyTedQ" name="Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_heDqUlTSEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_heDqU1TSEeCqmqCszyTedQ" name="Modeled"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_heDqVFTSEeCqmqCszyTedQ" name="Location &amp; Size"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_heDqVVTSEeCqmqCszyTedQ" name="Perimeters"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_heDqVlTSEeCqmqCszyTedQ" name="Growth Rate"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQcFTSEeCqmqCszyTedQ" name="Consumption Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQcVTSEeCqmqCszyTedQ" name="Plot Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQclTSEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQc1TSEeCqmqCszyTedQ" name="Mapped"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQdFTSEeCqmqCszyTedQ" name="Modeled"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQdVTSEeCqmqCszyTedQ" name="Fuel Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQdlTSEeCqmqCszyTedQ" name="Plot Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQd1TSEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQeFTSEeCqmqCszyTedQ" name="Mapped"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQeVTSEeCqmqCszyTedQ" name="Fuel Moisture"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQelTSEeCqmqCszyTedQ" name="Canopy Fuels"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQe1TSEeCqmqCszyTedQ" name="Emissions Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQfFTSEeCqmqCszyTedQ" name="Field Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQfVTSEeCqmqCszyTedQ" name="Laboratory Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQflTSEeCqmqCszyTedQ" name="Modeled"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQf1TSEeCqmqCszyTedQ" name="PM 2.5"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQgFTSEeCqmqCszyTedQ" name="NOx or SOx"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQgVTSEeCqmqCszyTedQ" name="Carbon/Greenhouse"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQglTSEeCqmqCszyTedQ" name="Tracer"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQg1TSEeCqmqCszyTedQ" name="Non Methane Organic Compounds"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQhFTSEeCqmqCszyTedQ" name="Other"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQhVTSEeCqmqCszyTedQ" name="Plume Rise Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQhlTSEeCqmqCszyTedQ" name="Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQh1TSEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQiFTSEeCqmqCszyTedQ" name="Modeled"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQiVTSEeCqmqCszyTedQ" name="Fire Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQilTSEeCqmqCszyTedQ" name="Wildfire"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQi1TSEeCqmqCszyTedQ" name="Prescribed Burn"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQjFTSEeCqmqCszyTedQ" name="Agricultural"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQjVTSEeCqmqCszyTedQ" name="Rangeland Burn"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQjlTSEeCqmqCszyTedQ" name="Other"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQj1TSEeCqmqCszyTedQ" name="Various"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQkFTSEeCqmqCszyTedQ" name="Laboratory"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQkVTSEeCqmqCszyTedQ" name="N/A"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQklTSEeCqmqCszyTedQ" name="Meteorology Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQk1TSEeCqmqCszyTedQ" name="Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQlFTSEeCqmqCszyTedQ" name="Modeled"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQlVTSEeCqmqCszyTedQ" name="Smoke Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQllTSEeCqmqCszyTedQ" name="Point Observations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQl1TSEeCqmqCszyTedQ" name="Remote Sensing"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQmFTSEeCqmqCszyTedQ" name="Modeled"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQmVTSEeCqmqCszyTedQ" name="Concentrations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQmlTSEeCqmqCszyTedQ" name="Transport"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQm1TSEeCqmqCszyTedQ" name="Deposition"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQnFTSEeCqmqCszyTedQ" name="Chemistry"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQnVTSEeCqmqCszyTedQ" name="PM 2.5"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQnlTSEeCqmqCszyTedQ" name="Ozone or Precursors"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQn1TSEeCqmqCszyTedQ" name="Visibility"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQoFTSEeCqmqCszyTedQ" name="Carbon/Greenhouse"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQoVTSEeCqmqCszyTedQ" name="Toxics"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQolTSEeCqmqCszyTedQ" name="Tracer"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQo1TSEeCqmqCszyTedQ" name="Non Methane Organic Compounds"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQpFTSEeCqmqCszyTedQ" name="Other"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_nBTQpVTSEeCqmqCszyTedQ" name="Fuel Group Type">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQplTSEeCqmqCszyTedQ" name="Forested System"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQp1TSEeCqmqCszyTedQ" name="Alpine system"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQqFTSEeCqmqCszyTedQ" name="Shrublands"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQqVTSEeCqmqCszyTedQ" name="Grasslands"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQqlTSEeCqmqCszyTedQ" name="Deep Organic"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQq1TSEeCqmqCszyTedQ" name="Other"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQrFTSEeCqmqCszyTedQ" name="Various"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQrVTSEeCqmqCszyTedQ" name="N/A"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_qMIYQFTTEeCqmqCszyTedQ" name="Contact">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_y00FUlTTEeCqmqCszyTedQ" name="name" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_7pHzklTTEeCqmqCszyTedQ" name="addr1" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_AWRfMlTUEeCqmqCszyTedQ" name="city" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_DxeawlTUEeCqmqCszyTedQ" name="state" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_KPlGolTUEeCqmqCszyTedQ" name="zip" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_NQZMQlTUEeCqmqCszyTedQ" name="phone" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_OhdLglTUEeCqmqCszyTedQ" name="email" type="_vz2OslTTEeCqmqCszyTedQ">
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_VXtRoFTUEeCqmqCszyTedQ"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_QVsJQlTUEeCqmqCszyTedQ" name="url" type="_vz2OslTTEeCqmqCszyTedQ">
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_UhT1IFTUEeCqmqCszyTedQ"/>
      </ownedAttribute>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_e2e5MFTUEeCqmqCszyTedQ" name="Description">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_gPlaIlTUEeCqmqCszyTedQ" name="shortDescription" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_j2Ql4lTUEeCqmqCszyTedQ" name="abstract" type="_vz2OslTTEeCqmqCszyTedQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_pLpWMFTUEeCqmqCszyTedQ" name="Technical">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_qSbYEFTUEeCqmqCszyTedQ" name="refData" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_s0_bclTUEeCqmqCszyTedQ" name="url" type="_vz2OslTTEeCqmqCszyTedQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_2o7asFTUEeCqmqCszyTedQ" name="SEMIPRecord">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_AjuP4lTVEeCqmqCszyTedQ" name="datasetRef" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_RiT38lTVEeCqmqCszyTedQ" name="availability" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_dz5lYlTVEeCqmqCszyTedQ" name="eventName" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_i0kp8lTVEeCqmqCszyTedQ" name="north" type="_vz2OtFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_l-MGQlTVEeCqmqCszyTedQ" name="south" type="_vz2OtFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_n_1N4lTVEeCqmqCszyTedQ" name="east" type="_vz2OtFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_qHbMglTVEeCqmqCszyTedQ" name="west" type="_vz2OtFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_uehvolTVEeCqmqCszyTedQ" name="start" type="_0zY_8FTVEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_49YUIlTVEeCqmqCszyTedQ" name="end" type="_0zY_8FTVEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_9ZsHYlTVEeCqmqCszyTedQ" name="verticalRange" type="_vz2OtFTTEeCqmqCszyTedQ" isOrdered="true">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_AyWsUFTWEeCqmqCszyTedQ" value="2"/>
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_AhXqAFTWEeCqmqCszyTedQ" value="2"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_HUe8klTWEeCqmqCszyTedQ" name="fireInformation" type="_heDqUFTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_MoX4ElTWEeCqmqCszyTedQ" name="fuels" type="_nBTQdVTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_VOO6olTWEeCqmqCszyTedQ" name="consumption" type="_nBTQcFTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_aSoBklTWEeCqmqCszyTedQ" name="emissions" type="_nBTQe1TSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_cHvwIlTWEeCqmqCszyTedQ" name="plumeRise" type="_nBTQhVTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_fUWPAlTWEeCqmqCszyTedQ" name="smoke" type="_nBTQlVTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_lymE0lTWEeCqmqCszyTedQ" name="fireType" type="_nBTQiVTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_pdu50lTWEeCqmqCszyTedQ" name="fuelGroup" type="_nBTQpVTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_sE7lklTWEeCqmqCszyTedQ" name="meteorology" type="_nBTQklTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_x-OUMlTWEeCqmqCszyTedQ" name="fileFormatRef" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_1NzOklTWEeCqmqCszyTedQ" name="description" type="_e2e5MFTUEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_6dXqwlTWEeCqmqCszyTedQ" name="technical" type="_pLpWMFTUEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_9Kq-gFTWEeCqmqCszyTedQ" name="contactOrg" type="_qMIYQFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="__eMgUlTWEeCqmqCszyTedQ" name="contactPrimary" type="_qMIYQFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_CEyvIlTXEeCqmqCszyTedQ" name="contactSubmitted" type="_qMIYQFTTEeCqmqCszyTedQ"/>
    </packagedElement>
    <packagedElement xmi:type="uml:DataType" xmi:id="_0zY_8FTVEeCqmqCszyTedQ" name="Date"/>
  </packagedElement>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_vz2OsFTTEeCqmqCszyTedQ" name="Boolean"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_vz2OsVTTEeCqmqCszyTedQ" name="Integer"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_vz2OslTTEeCqmqCszyTedQ" name="String"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_vz2Os1TTEeCqmqCszyTedQ" name="UnlimitedNatural"/>
  <packagedElement xmi:type="sysML:ValueType" xmi:id="_vz2OtFTTEeCqmqCszyTedQ" name="Real"/>
  <packagedElement xmi:type="sysML:ValueType" xmi:id="_vz2OtVTTEeCqmqCszyTedQ" name="Complex">
    <ownedAttribute xmi:type="uml:Property" xmi:id="_vz2OtlTTEeCqmqCszyTedQ" name="realPart" type="_vz2OtFTTEeCqmqCszyTedQ"/>
    <ownedAttribute xmi:type="uml:Property" xmi:id="_vz2Ot1TTEeCqmqCszyTedQ" name="imaginaryPart" type="_vz2OtFTTEeCqmqCszyTedQ"/>
  </packagedElement>
  <profileApplication xmi:type="uml:ProfileApplication" xmi:id="idProfileApplication">
    <eAnnotations xmi:type="ecore:EAnnotation" xmi:id="idProfileAnnotation" source="http://www.eclipse.org/uml2/2.0.0/UML">
      <references xmi:type="ecore:EPackage" href="../../../plugin/org.topcased.modeler.sysml/templates/activitydiagram/profile/SysMLActivityExtensionsProfile.uml#ProfileContentId"/>
    </eAnnotations>
    <appliedProfile xmi:type="uml:Profile" href="../../../plugin/org.topcased.modeler.sysml/templates/activitydiagram/profile/SysMLActivityExtensionsProfile.uml#ActivityProfileId"/>
  </profileApplication>
</uml:Model>
