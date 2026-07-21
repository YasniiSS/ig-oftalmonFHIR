Profile: CurvaTensionOcular
Parent: Observation
Id: curva-tension-ocular
Title: "Curva de Tensión Ocular"
Description: "Curva de tensión aplanática que agrupa mediciones seriadas de presión intraocular a lo largo del día"

* status 1..1 MS
* category 1..* MS
* code 1..1 MS
* subject 1..1 MS
* encounter 0..1 MS
* effective[x] only Period
* effective[x] 1..1 MS
* performer 0..* MS
* value[x] 0..0
* hasMember 1..* MS
* bodySite 0..1 MS
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodySiteRef 0..1 MS
* note 0..* MS

Instance: CurvaTensionODEjemplo
InstanceOf: CurvaTensionOcular
Description: "Curva de tensión aplanática ojo derecho"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* category[0].coding.display = "Exam"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #252812002
* code.coding.display = "Curva de tensión ocular"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* effectivePeriod.start = "2025-03-20T08:00:00-03:00"
* effectivePeriod.end = "2025-03-20T14:00:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)
* hasMember[0] = Reference(CurvaPIOOD0800)
* hasMember[0].display = "PIO OD 08:00 - 18 mmHg"
* hasMember[1] = Reference(CurvaPIOOD1200)
* hasMember[1].display = "PIO OD 12:00 - 24 mmHg"
* hasMember[2] = Reference(CurvaPIOOD1400)
* hasMember[2].display = "PIO OD 14:00 - 20 mmHg"
* note[0].text = "PIO máxima 24 mmHg a las 12:00. Fluctuación diurna de 8 mmHg."

// Mediciones individuales de la curva
Instance: CurvaPIOOD0800
InstanceOf: PresionIntraocular
Description: "PIO OD 08:00 - Curva de tensión"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #41633001
* code.coding.display = "Presión intraocular"
* subject = Reference(PacienteEjemplo)
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T08:00:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #252832004
* method.coding.display = "Tonometría de aplanación de Goldmann"
* valueQuantity.value = 18
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)


Instance: CurvaPIOOD1200
InstanceOf: PresionIntraocular
Description: "PIO OD 12:00 - Curva de tensión"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #41633001
* code.coding.display = "Presión intraocular"
* subject = Reference(PacienteEjemplo)
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T12:00:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #252832004
* method.coding.display = "Tonometría de aplanación de Goldmann"
* valueQuantity.value = 24
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)
* interpretation[0].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[0].coding.code = #H
* interpretation[0].coding.display = "Alto"

Instance: CurvaPIOOD1400
InstanceOf: PresionIntraocular
Description: "PIO OD 14:00 - Curva de tensión"
Usage: #example

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #exam
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #41633001
* code.coding.display = "Presión intraocular"
* subject = Reference(PacienteEjemplo)
* encounter = Reference(EncuentroEjemplo)
* effectiveDateTime = "2025-03-20T14:00:00-03:00"
* performer[0].display = "TM. Elisa Silva"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #252832004
* method.coding.display = "Tonometría de aplanación de Goldmann"
* valueQuantity.value = 20
* valueQuantity.unit = "mmHg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm[Hg]
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoDerechoEstructura)
