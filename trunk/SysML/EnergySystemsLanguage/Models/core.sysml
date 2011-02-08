<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="core">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="core">
    <packagedElement xmi:type="sysML:Block" xmi:id="_mGfMUDPIEeCuYv9BoOuCJQ" name="Source"/>
    <packagedElement xmi:type="sysML:Block" xmi:id="_rlaTKzPIEeCuYv9BoOuCJQ" name="Sink"/>
    <packagedElement xmi:type="sysML:Block" xmi:id="_uDW8SzPIEeCuYv9BoOuCJQ" name="Tank"/>
    <packagedElement xmi:type="sysML:Block" xmi:id="_vJPmSzPIEeCuYv9BoOuCJQ" name="Interaction"/>
    <packagedElement xmi:type="sysML:Block" xmi:id="_2RhQizPIEeCuYv9BoOuCJQ" name="Autocatalyst"/>
    <packagedElement xmi:type="sysML:Block" xmi:id="_34B7WzPIEeCuYv9BoOuCJQ" name="Producer">
      <generalization xmi:type="uml:Generalization" xmi:id="_8TKC0DPIEeCuYv9BoOuCJQ" general="_2RhQizPIEeCuYv9BoOuCJQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_5IWTuzPIEeCuYv9BoOuCJQ" name="Consumer">
      <generalization xmi:type="uml:Generalization" xmi:id="_9JPWRDPIEeCuYv9BoOuCJQ" general="_2RhQizPIEeCuYv9BoOuCJQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:FlowSpecification" xmi:id="_OTmJcDPJEeCuYv9BoOuCJQ" name="FlowType"/>
    <packagedElement xmi:type="uml:Package" xmi:id="_R-65wDPLEeCuYv9BoOuCJQ" name="core"/>
  </packagedElement>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_bM4Z8DPSEeCuYv9BoOuCJQ" name="Boolean"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_bM4Z8TPSEeCuYv9BoOuCJQ" name="Integer"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_bNBj4DPSEeCuYv9BoOuCJQ" name="String"/>
  <packagedElement xmi:type="uml:PrimitiveType" xmi:id="_bNBj4TPSEeCuYv9BoOuCJQ" name="UnlimitedNatural"/>
  <packagedElement xmi:type="sysML:ValueType" xmi:id="_bNBj4jPSEeCuYv9BoOuCJQ" name="Real"/>
  <packagedElement xmi:type="sysML:ValueType" xmi:id="_bNBj4zPSEeCuYv9BoOuCJQ" name="Complex">
    <ownedAttribute xmi:type="uml:Property" xmi:id="_bNBj5DPSEeCuYv9BoOuCJQ" name="realPart" type="_bNBj4jPSEeCuYv9BoOuCJQ"/>
    <ownedAttribute xmi:type="uml:Property" xmi:id="_bNBj5TPSEeCuYv9BoOuCJQ" name="imaginaryPart" type="_bNBj4jPSEeCuYv9BoOuCJQ"/>
  </packagedElement>
  <profileApplication xmi:type="uml:ProfileApplication" xmi:id="idProfileApplication">
    <eAnnotations xmi:type="ecore:EAnnotation" xmi:id="idProfileAnnotation" source="http://www.eclipse.org/uml2/2.0.0/UML">
      <references xmi:type="ecore:EPackage" href="../../../plugin/org.topcased.modeler.sysml/templates/activitydiagram/profile/SysMLActivityExtensionsProfile.uml#ProfileContentId"/>
    </eAnnotations>
    <appliedProfile xmi:type="uml:Profile" href="../../../plugin/org.topcased.modeler.sysml/templates/activitydiagram/profile/SysMLActivityExtensionsProfile.uml#ActivityProfileId"/>
  </profileApplication>
</uml:Model>
