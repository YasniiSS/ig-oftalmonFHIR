Profile: AgudezaVisual
Parent: Observation
Id: agudeza-visual-oftalmologia
Title: "Agudeza Visual Oftalmológica"
Description: "Perfil de observación para registro de agudeza visual alineado con HL7 eyecare IG"

* status 1..1 MS
* category 1..* MS
* code 1..1 MS
* code.coding 1..* MS
* subject 1..1 MS
* encounter 0..1 MS
* effective[x] 0..1 MS
* performer 0..* MS
* value[x] only Ratio or Quantity or CodeableConcept
* value[x] 0..1 MS
* method 1..1 MS
* method.coding 1..* MS
* bodySite 0..1 MS
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodySiteRef 0..1 MS
* dataAbsentReason 0..1 MS
* note 0..* MS
* device 0..1 MS
* component 0..* MS

Instance: AVSinCorreccionOD
InstanceOf: AgudezaVisual
Description: "Agudeza visual sin corrección ojo derecho - Snellen 20/40"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #420050001
* code.coding.display = "Agudeza visual sin corrección"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:15:00-03:00"
* performer[0].display = "Dr. Mickey Mouse"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #400913005
* method.coding.display = "Carta de Snellen"
* valueRatio.numerator.value = 20
* valueRatio.numerator.unit = "ft"
* valueRatio.denominator.value = 40
* valueRatio.denominator.unit = "ft"
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)
* note[0].text = "Paciente refiere visión borrosa de lejos en OD"

Instance: AVConCorreccionOI
InstanceOf: AgudezaVisual
Description: "Agudeza visual con corrección ojo izquierdo - Snellen 20/20"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #397536007
* code.coding.display = "Agudeza visual con corrección"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:20:00-03:00"
* performer[0].display = "Dr. Mickey Mouse"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #400913005
* method.coding.display = "Carta de Snellen"
* valueRatio.numerator.value = 20
* valueRatio.numerator.unit = "ft"
* valueRatio.denominator.value = 20
* valueRatio.denominator.unit = "ft"
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoIzquierdoEstructura)

Instance: AVConPinholeOD
InstanceOf: AgudezaVisual
Description: "Agudeza visual con agujero estenopeico ojo derecho - Snellen 20/25"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #419475002
* code.coding.display = "Agudeza visual con agujero estenopeico"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:25:00-03:00"
* performer[0].display = "Dr. Mickey Mouse"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #400913005
* method.coding.display = "Carta de Snellen"
* valueRatio.numerator.value = 20
* valueRatio.numerator.unit = "ft"
* valueRatio.denominator.value = 25
* valueRatio.denominator.unit = "ft"
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)
* note[0].text = "Mejora con pinhole sugiere componente refractivo"

Instance: AVBinocular
InstanceOf: AgudezaVisual
Description: "Agudeza visual binocular sin corrección - decimal 0.5"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #422673001
* code.coding.display = "Agudeza visual binocular"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:30:00-03:00"
* performer[0].display = "Dr. Mickey Mouse"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #400913005
* method.coding.display = "Carta de Snellen"
* valueQuantity.value = 0.5
* valueQuantity.unit = "decimal VA"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1
* bodySite.extension[bodySiteRef].valueReference = Reference(AmbosOjosEstructura)

Instance: AVCuentaDedosOD
InstanceOf: AgudezaVisualOftalmologia
Description: "Agudeza visual cuenta dedos ojo derecho"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #420050001
* code.coding.display = "Agudeza visual sin corrección"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T09:35:00-03:00"
* performer[0].display = "Dr. Mickey Mouse"
* method.text = "Cuenta dedos"
* valueCodeableConcept.coding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding.code = #260292001
* valueCodeableConcept.coding.display = "Cuenta dedos"
* valueCodeableConcept.text = "Cuenta dedos a 1 metro"
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)
* note[0].text = "Paciente cuenta dedos a 1 metro OD"