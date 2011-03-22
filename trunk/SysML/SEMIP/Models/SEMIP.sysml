<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="SEMIP">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="SEMIP">
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_ozYW0EkFEeCjVMwcexSn5g" name="ModelingStep">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_2devUEkFEeCjVMwcexSn5g" name="FireInformationSystem"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_5K70EkkFEeCjVMwcexSn5g" name="FuelLoading"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_7fM8wkkFEeCjVMwcexSn5g" name="TotalFuelConsumption"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_9TlEckkFEeCjVMwcexSn5g" name="TimeRateOfConsumption"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_BGBbUkkGEeCjVMwcexSn5g" name="Emissions"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_B9AGokkGEeCjVMwcexSn5g" name="PlumeRise"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_EX1KUkkGEeCjVMwcexSn5g" name="DispersionAtmosphericChemistry"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_rnF0kEkFEeCjVMwcexSn5g" name="OutputDataLevel">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_JwpCEkkGEeCjVMwcexSn5g" name="BasicFireInformation"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_L_2EkkkGEeCjVMwcexSn5g" name="FuelLoadings"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_On66EkkGEeCjVMwcexSn5g" name="TotalConsumption"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_SxnTUkkGEeCjVMwcexSn5g" name="TimeProfileOfConsumption"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_U04yokkGEeCjVMwcexSn5g" name="SpeciatedEmissions"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_XYf-4kkGEeCjVMwcexSn5g" name="VerticalPlumeProfile"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_ZQmwAEkGEeCjVMwcexSn5g" name="TotalColumnSmoke"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_cT9MQkkGEeCjVMwcexSn5g" name="GroundConcentrations"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_d5b8UkkGEeCjVMwcexSn5g" name="ConcentrationsFields"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_fV0awkkGEeCjVMwcexSn5g" name="ChemicalEvolution"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_ugdOYkkFEeCjVMwcexSn5g" name="DataClass">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_kLBPIkkGEeCjVMwcexSn5g" name="BurnedArea"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_mSUS0kkGEeCjVMwcexSn5g" name="FireBurnSeverity"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_n0q2YkkGEeCjVMwcexSn5g" name="FuelVegetationMap"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_qoEyIkkGEeCjVMwcexSn5g" name="FuelLoadingMeasurements"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_uKkogkkGEeCjVMwcexSn5g" name="Meterology"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_wvFMokkGEeCjVMwcexSn5g" name="AirborneGasAerosolMeasurement"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_04eD4kkGEeCjVMwcexSn5g" name="GroundGasAerosolMeasurement"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_3fXNokkGEeCjVMwcexSn5g" name="FireEffectsBehaviorMeasurements"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_6TN1UkkGEeCjVMwcexSn5g" name="PlumeRiseMeasurements"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="__CKQskkGEeCjVMwcexSn5g" name="IncidentRecords"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_CY4U4EkHEeCjVMwcexSn5g" name="SEMIPRecord">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_GPpLEEkHEeCjVMwcexSn5g" name="fileReference" type="_TthsgkkHEeCjVMwcexSn5g"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_YZo2UkkHEeCjVMwcexSn5g" name="eventReference" type="_TthsgkkHEeCjVMwcexSn5g"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_bw9XckkHEeCjVMwcexSn5g" name="step" type="_ozYW0EkFEeCjVMwcexSn5g">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_g0KyoEkHEeCjVMwcexSn5g" value="*"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_kcoHEkkHEeCjVMwcexSn5g" name="level" type="_rnF0kEkFEeCjVMwcexSn5g">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_m9HG0EkHEeCjVMwcexSn5g" value="*"/>
      </ownedAttribute>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_oE7qgkkHEeCjVMwcexSn5g" name="class" type="_ugdOYkkFEeCjVMwcexSn5g">
        <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_phxb8EkHEeCjVMwcexSn5g" value="*"/>
      </ownedAttribute>
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
