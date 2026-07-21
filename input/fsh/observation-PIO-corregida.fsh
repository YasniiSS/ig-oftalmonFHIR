Profile: PresionIntraocularCorregida
Parent: Observation
Id: presion-intraocular-corregida
Title: "Presión Intraocular Corregida"
Description: "Perfil de observación para PIO corregida por paquimetría corneal. Valor derivado de la PIO medida y el grosor corneal central."

* status 1..1 MS
* category 1..* MS
* code 1..1 MS
* code.coding 1..* MS
* subject 1..1 MS
* encounter 0..1 MS
* effective[x] 0..1 MS
* performer 0..* MS
* value[x] only Quantity
* value[x] 1..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system 1..1 MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..1 MS
* valueQuantity.code = #mm[Hg]
* method 0..1 MS
* bodySite 0..1 MS
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodySiteRef 0..1 MS
* derivedFrom 2..* MS
* note 0..* MS

Instance: PIOCorregidaODEjemplo
InstanceOf: PresionIntraocularCorregida
Description: "PIO corregida por paquimetría ojo derecho"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #1286906008
* code.coding.display = "Presión intraocular corregida por córnea"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:50:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.text = "Corrección por fórmula de Ehlers"
* valueQuantity.value = 18
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)
* derivedFrom[0] = Reference(PIOROD)
* derivedFrom[0].display = "PIO medida OD: 16 mmHg"
* derivedFrom[1] = Reference(PaquimetriaODEjemplo)
* derivedFrom[1].display = "Paquimetría OD: 520 um"
* note[0].text = "PIO corregida calculada con fórmula de Ehlers. Córnea delgada (520um) indica subestimación de PIO real."

Instance: PIOCorregidaOIEjemplo
InstanceOf: PresionIntraocularCorregida
Description: "PIO corregida por paquimetría ojo izquierdo"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #1286906008
* code.coding.display = "Presión intraocular corregida por córnea"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:51:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.text = "Corrección por fórmula de Ehlers"
* valueQuantity.value = 21
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoIzquierdoEstructura)
* derivedFrom[0] = Reference(PIOROI)
* derivedFrom[0].display = "PIO medida OI: 22 mmHg"
* derivedFrom[1] = Reference(PaquimetriaOIEjemplo)
* derivedFrom[1].display = "Paquimetría OI: 545 um"
* note[0].text = "PIO corregida calculada con fórmula de Ehlers. Córnea dentro de rango normal."