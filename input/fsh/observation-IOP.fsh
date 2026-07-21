Profile: PresionIntraocular
Parent: Observation
Id: presion-intraocular
Title: "Presión Intraocular (PIO)"
Description: "Perfil de observación para registro de presión intraocular alineado con HL7 eyecare IG"

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
* method.coding from http://snomed.info/sct (preferred)
* bodySite 0..1 MS
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodySiteRef 0..1 MS
* dataAbsentReason 0..1 MS
* note 0..* MS
* device 0..1 MS

Instance: PIOROD
InstanceOf: PresionIntraocular
Description: "Presión intraocular ojo derecho - Goldmann"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #41633001
* code.coding.display = "Presión intraocular"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:40:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #252832004
* method.coding.display = "Tonometría de aplanación de Goldmann"
* valueQuantity.value = 16
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)

Instance: PIOROI
InstanceOf: PresionIntraocular
Description: "Presión intraocular ojo izquierdo - Goldmann"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #41633001
* code.coding.display = "Presión intraocular"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:42:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #389152008
* method.coding.display = "Tonometría de aplanación de Goldmann"
* valueQuantity.value = 22
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoIzquierdoEstructura)
* interpretation[0].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[0].coding.code = #H
* interpretation[0].coding.display = "Alto"
* note[0].text = "PIO limítrofe OI. Solicitar paquimetría y campo visual."
