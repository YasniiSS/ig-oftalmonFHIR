Profile: Paquimetria
Parent: Observation
Id: paquimetria
Title: "Paquimetría Corneal"
Description: "Perfil de observación para registro de grosor corneal central"

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
* valueQuantity.code = #um
* method 0..1 MS
* bodySite 0..1 MS
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodySiteRef 0..1 MS
* device 0..1 MS
* note 0..* MS

Instance: PaquimetriaODEjemplo
InstanceOf: Paquimetria
Description: "Paquimetría corneal ojo derecho"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #397327001
* code.coding.display = "Grosor corneal central"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:45:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #252796007
* method.coding.display = "Paquimetría ultrasónica"
* valueQuantity.value = 520
* valueQuantity.unit = "um"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #um
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)

Instance: PaquimetriaOIEjemplo
InstanceOf: Paquimetria
Description: "Paquimetría corneal ojo izquierdo"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #397327001
* code.coding.display = "Grosor corneal central"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:46:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #252796007
* method.coding.display = "Paquimetría ultrasónica"
* valueQuantity.value = 545
* valueQuantity.unit = "um"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #um
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoIzquierdoEstructura)