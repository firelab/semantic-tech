<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="Semip2">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="Semip2">
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
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_AhXqAFTWEeCqmqCszyTedQ"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_8pDxElWYEeCRlq0hGp-4nA" name="fireInfo" type="_bNGXoFWYEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_HUe8klTWEeCqmqCszyTedQ" name="fireInformation" type="_exYBlVWWEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_ztwC8lWYEeCRlq0hGp-4nA" name="fuelInfo" type="_bNGXoFWYEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_MoX4ElTWEeCqmqCszyTedQ" name="fuels" type="_dnpj8FWXEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_YoU4UFWZEeCRlq0hGp-4nA" name="emissionsInfo" type="_bNGXoFWYEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_aSoBklTWEeCqmqCszyTedQ" name="emissions" type="_4lop0FWWEeCRlq0hGp-4nA">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_EkH7cFWfEeCRlq0hGp-4nA" value="*"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_FEYiIFWaEeCRlq0hGp-4nA" name="smokeInfo" type="_bNGXoFWYEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_fUWPAlTWEeCqmqCszyTedQ" name="smoke" type="_4lop0FWWEeCRlq0hGp-4nA">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Ky4jwFWfEeCRlq0hGp-4nA" value="*"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_Ms2IUlWaEeCRlq0hGp-4nA" name="smokeAspect" type="_h8OsoFWZEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="__jhhoFWZEeCRlq0hGp-4nA" name="plumeInfo" type="_bNGXoFWYEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_Y8WyIFWaEeCRlq0hGp-4nA" name="meteorologyInfo" type="_bNGXoFWYEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_yX40gFWeEeCRlq0hGp-4nA" name="meteorology" type="_omfL4FWeEeCRlq0hGp-4nA">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_CFbrcFWfEeCRlq0hGp-4nA" value="*"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_lymE0lTWEeCqmqCszyTedQ" name="fireType" type="_nBTQiVTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_pdu50lTWEeCqmqCszyTedQ" name="fuelGroup" type="_nBTQpVTSEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_TdE7clWZEeCRlq0hGp-4nA" name="consumptionInfo" type="_bNGXoFWYEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_x-OUMlTWEeCqmqCszyTedQ" name="fileFormatRef" type="_vz2OslTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_1NzOklTWEeCqmqCszyTedQ" name="description" type="_e2e5MFTUEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_6dXqwlTWEeCqmqCszyTedQ" name="technical" type="_pLpWMFTUEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_9Kq-gFTWEeCqmqCszyTedQ" name="contactOrg" type="_qMIYQFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="__eMgUlTWEeCqmqCszyTedQ" name="contactPrimary" type="_qMIYQFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_CEyvIlTXEeCqmqCszyTedQ" name="contactSubmitted" type="_qMIYQFTTEeCqmqCszyTedQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_YbBxQlWbEeCRlq0hGp-4nA" name="techDocRef" type="_vz2OslTTEeCqmqCszyTedQ">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_cP2twFWbEeCRlq0hGp-4nA" value="*"/>
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_b20isFWbEeCRlq0hGp-4nA"/>
      </ownedAttribute>
    </packagedElement>
    <packagedElement xmi:type="uml:DataType" xmi:id="_0zY_8FTVEeCqmqCszyTedQ" name="Date"/>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_lG7q4FWVEeCRlq0hGp-4nA" name="Source">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_mOwOkFWVEeCRlq0hGp-4nA" name="In-Situ"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nipfYlWVEeCRlq0hGp-4nA" name="Remote"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_pQ6_ElWVEeCRlq0hGp-4nA" name="Model"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_rcjJJVWVEeCRlq0hGp-4nA" name="Data Structure">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_sej_wlWVEeCRlq0hGp-4nA" name="Plot"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_t-ObslWVEeCRlq0hGp-4nA" name="Point"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_AuOXAlWWEeCRlq0hGp-4nA" name="Coverage"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_N6-sNVWWEeCRlq0hGp-4nA" name="Environment">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_PNrDIlWWEeCRlq0hGp-4nA" name="Laboratory"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_RObZ8lWWEeCRlq0hGp-4nA" name="Field"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_TcInolWWEeCRlq0hGp-4nA" name="Ground"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_UsTPAlWWEeCRlq0hGp-4nA" name="Air"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_exYBlVWWEeCRlq0hGp-4nA" name="Fire Measurand">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_zAmT8lWWEeCRlq0hGp-4nA" name="Location &amp; Size"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_0bVzolWWEeCRlq0hGp-4nA" name="Perimeters"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_1-JDIlWWEeCRlq0hGp-4nA" name="Growth Rate"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_4lop0FWWEeCRlq0hGp-4nA" name="Emissions Measurand">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQnVTSEeCqmqCszyTedQ" name="PM 2.5"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQnlTSEeCqmqCszyTedQ" name="Ozone or Precursors"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQoFTSEeCqmqCszyTedQ" name="Carbon/Greenhouse"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQgFTSEeCqmqCszyTedQ" name="NOx or SOx"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQoVTSEeCqmqCszyTedQ" name="Toxics"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQolTSEeCqmqCszyTedQ" name="Tracer"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQo1TSEeCqmqCszyTedQ" name="Non Methane Organic Compounds"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQpFTSEeCqmqCszyTedQ" name="Other"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_dnpj8FWXEeCRlq0hGp-4nA" name="Fuel Measurand">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_fZMaElWXEeCRlq0hGp-4nA" name="Fuel Moisture"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_g5Th8lWXEeCRlq0hGp-4nA" name="Canopy Fuels"/>
    </packagedElement>
    <packagedElement xmi:type="uml:DataType" xmi:id="_bNGXoFWYEeCRlq0hGp-4nA" name="DataInfoType">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_eqiH0FWYEeCRlq0hGp-4nA" name="source" type="_lG7q4FWVEeCRlq0hGp-4nA"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_lOcgwlWYEeCRlq0hGp-4nA" name="environment" type="_N6-sNVWWEeCRlq0hGp-4nA">
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_WPDeYFWaEeCRlq0hGp-4nA"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_p1C4clWYEeCRlq0hGp-4nA" name="structure" type="_rcjJJVWVEeCRlq0hGp-4nA">
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_KiNSMFWZEeCRlq0hGp-4nA"/>
      </ownedAttribute>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_h8OsoFWZEeCRlq0hGp-4nA" name="Aspect">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQmVTSEeCqmqCszyTedQ" name="Concentrations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQmlTSEeCqmqCszyTedQ" name="Transport"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQm1TSEeCqmqCszyTedQ" name="Deposition"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQnFTSEeCqmqCszyTedQ" name="Chemistry"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_nBTQn1TSEeCqmqCszyTedQ" name="Visibility"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_omfL4FWeEeCRlq0hGp-4nA" name="Meteorology Measurand">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_tfHHslWeEeCRlq0hGp-4nA" name="RH"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_uc9QAlWeEeCRlq0hGp-4nA" name="Temperature"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_vdeR0lWeEeCRlq0hGp-4nA" name="Wind"/>
    </packagedElement>
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
