<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="core">
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="core">
    <packagedElement xmi:type="sysML:Block" xmi:id="_mGfMUDPIEeCuYv9BoOuCJQ" name="Source">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_toEdojSoEeCuKPvApV0YHg" name="type" type="_ZQPlsDSkEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_x4FdIzSvEeCuKPvApV0YHg" name="out" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="out"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_rlaTKzPIEeCuYv9BoOuCJQ" name="Sink">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_wRpvAjSoEeCuKPvApV0YHg" name="type" type="_ZQPlsDSkEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_w9FNczSvEeCuKPvApV0YHg" name="in" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="in"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_uDW8SzPIEeCuYv9BoOuCJQ" name="Tank">
      <generalization xmi:type="uml:Generalization" xmi:id="_BI908DSqEeCuKPvApV0YHg" general="_WIR88DSpEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_YabbMjSoEeCuKPvApV0YHg" name="contents" type="_mGQj8DSmEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_cSrfIjSoEeCuKPvApV0YHg" name="capacity" type="_mGQj8DSmEeCuKPvApV0YHg">
        <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_fqcsMDSoEeCuKPvApV0YHg"/>
      </ownedAttribute>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_vJPmSzPIEeCuYv9BoOuCJQ" name="Interaction">
      <generalization xmi:type="uml:Generalization" xmi:id="_NgwwsDStEeCuKPvApV0YHg" general="_UlqeMDSqEeCuKPvApV0YHg"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_2RhQizPIEeCuYv9BoOuCJQ" name="Autocatalyst">
      <generalization xmi:type="uml:Generalization" xmi:id="_MU6ooDStEeCuKPvApV0YHg" general="_UlqeMDSqEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_vknfUjSnEeCuKPvApV0YHg" name="tank" type="_uDW8SzPIEeCuYv9BoOuCJQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_z9WaIjSnEeCuKPvApV0YHg" name="interaction" type="_vJPmSzPIEeCuYv9BoOuCJQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_zK6aITSzEeCuKPvApV0YHg" name="feedback" type="_PmdqMDSzEeCuKPvApV0YHg" aggregation="composite"/>
      <ownedConnector xmi:type="uml:Connector" xmi:id="_lMqzEDSyEeCuKPvApV0YHg" name="GrossProduction" kind="delegation">
        <end xmi:type="uml:ConnectorEnd" xmi:id="_lMqzETSyEeCuKPvApV0YHg" role="_wrA0wzSpEeCuKPvApV0YHg" partWithPort="_z9WaIjSnEeCuKPvApV0YHg"/>
        <end xmi:type="uml:ConnectorEnd" xmi:id="_lMqzEjSyEeCuKPvApV0YHg" role="_vjfMAzSpEeCuKPvApV0YHg" partWithPort="_vknfUjSnEeCuKPvApV0YHg"/>
      </ownedConnector>
      <ownedConnector xmi:type="uml:Connector" xmi:id="_H-7boDS0EeCuKPvApV0YHg" name="TankOutflow" kind="delegation">
        <end xmi:type="uml:ConnectorEnd" xmi:id="_H-7boTS0EeCuKPvApV0YHg" role="_wrA0wzSpEeCuKPvApV0YHg" partWithPort="_vknfUjSnEeCuKPvApV0YHg"/>
        <end xmi:type="uml:ConnectorEnd" xmi:id="_H-7bojS0EeCuKPvApV0YHg" role="_UmGM8zSzEeCuKPvApV0YHg" partWithPort="_zK6aITSzEeCuKPvApV0YHg"/>
      </ownedConnector>
      <ownedConnector xmi:type="uml:Connector" xmi:id="_OkL4YDS0EeCuKPvApV0YHg" name="Feedback" kind="delegation">
        <end xmi:type="uml:ConnectorEnd" xmi:id="_OkL4YTS0EeCuKPvApV0YHg" role="_en5CADSzEeCuKPvApV0YHg" partWithPort="_zK6aITSzEeCuKPvApV0YHg"/>
        <end xmi:type="uml:ConnectorEnd" xmi:id="_OkL4YjS0EeCuKPvApV0YHg" role="_g7RwAzSqEeCuKPvApV0YHg" partWithPort="_z9WaIjSnEeCuKPvApV0YHg"/>
      </ownedConnector>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_34B7WzPIEeCuYv9BoOuCJQ" name="Producer">
      <generalization xmi:type="uml:Generalization" xmi:id="_8TKC0DPIEeCuYv9BoOuCJQ" general="_2RhQizPIEeCuYv9BoOuCJQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_5IWTuzPIEeCuYv9BoOuCJQ" name="Consumer">
      <generalization xmi:type="uml:Generalization" xmi:id="_9JPWRDPIEeCuYv9BoOuCJQ" general="_2RhQizPIEeCuYv9BoOuCJQ"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Enumeration" xmi:id="_2chIEDSjEeCuKPvApV0YHg" name="EnergyKinds">
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_40g6MDSjEeCuKPvApV0YHg" name="kineticLinear"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_Gr4SojSkEeCuKPvApV0YHg" name="kineticRotational"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="_6SiXYjSjEeCuKPvApV0YHg" name="gravitationalPotential"/>
      <ownedLiteral xmi:type="uml:EnumerationLiteral" xmi:id="__PVokjSjEeCuKPvApV0YHg" name="thermal"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_ZQPlsDSkEeCuKPvApV0YHg" name="TransformityType">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_eI3hgDSkEeCuKPvApV0YHg" name="transformity" type="_bNBj4jPSEeCuYv9BoOuCJQ"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_mi1nsDSlEeCuKPvApV0YHg" name="kind" type="_2chIEDSjEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_ICEXkjSmEeCuKPvApV0YHg" name="baseUnit" type="_bNBj4DPSEeCuYv9BoOuCJQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_mGQj8DSmEeCuKPvApV0YHg" name="TransformityQuantity">
      <ownedAttribute xmi:type="uml:Property" xmi:id="_sOmbMDSmEeCuKPvApV0YHg" name="type" type="_ZQPlsDSkEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_1WudUjSmEeCuKPvApV0YHg" name="value" type="_bNBj4jPSEeCuYv9BoOuCJQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_WIR88DSpEeCuKPvApV0YHg" name="ESLComponent" isAbstract="true">
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_vjfMAzSpEeCuKPvApV0YHg" name="in" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="in"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_wrA0wzSpEeCuKPvApV0YHg" name="out" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="out"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_xpJQ8zSpEeCuKPvApV0YHg" name="sink" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="out"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_UlqeMDSqEeCuKPvApV0YHg" name="ControlComponent">
      <generalization xmi:type="uml:Generalization" xmi:id="_YU03kDSqEeCuKPvApV0YHg" general="_WIR88DSpEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_g7RwAzSqEeCuKPvApV0YHg" name="control" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="in"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_aVXroDStEeCuKPvApV0YHg" name="Switch">
      <generalization xmi:type="uml:Generalization" xmi:id="_fFO3kDSuEeCuKPvApV0YHg" general="_UlqeMDSqEeCuKPvApV0YHg"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_c00JkDStEeCuKPvApV0YHg" name="SelfLimitingReceiver">
      <generalization xmi:type="uml:Generalization" xmi:id="_UAibEDSuEeCuKPvApV0YHg" general="_WIR88DSpEeCuKPvApV0YHg"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_l4LAcDStEeCuKPvApV0YHg" name="ConstantGainAmplifier">
      <generalization xmi:type="uml:Generalization" xmi:id="_hjCWwDSuEeCuKPvApV0YHg" general="_UlqeMDSqEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="uml:Property" xmi:id="_sUCQojStEeCuKPvApV0YHg" name="gain" type="_bNBj4jPSEeCuYv9BoOuCJQ"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_4P3wgDStEeCuKPvApV0YHg" name="Transaction">
      <generalization xmi:type="uml:Generalization" xmi:id="_zdYccDSuEeCuKPvApV0YHg" general="_WIR88DSpEeCuKPvApV0YHg"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_EyTWUzSuEeCuKPvApV0YHg" name="money_in" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="in"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_Jyhu8zSuEeCuKPvApV0YHg" name="money_out" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="out"/>
    </packagedElement>
    <packagedElement xmi:type="sysML:Block" xmi:id="_PmdqMDSzEeCuKPvApV0YHg" name="Feedback">
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_UmGM8zSzEeCuKPvApV0YHg" name="in" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="in"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_aMBTozSzEeCuKPvApV0YHg" name="out" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="out"/>
      <ownedAttribute xmi:type="sysML:FlowPort" xmi:id="_en5CADSzEeCuKPvApV0YHg" name="feedback" type="_mGQj8DSmEeCuKPvApV0YHg" aggregation="composite" direction="out"/>
    </packagedElement>
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
