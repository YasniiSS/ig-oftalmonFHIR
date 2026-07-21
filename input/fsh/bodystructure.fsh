Profile: EstructuraOcular
Parent: BodyStructure
Id: estructura-ocular
Title: "Estructura Ocular"
Description: "Estructura anatómica del ojo con lateralidad para uso en oftalmología"

* location 1..1 MS
* locationQualifier 1..* MS
* patient 1..1 MS
* description 0..1 MS

Instance: OjoDerechoEstructura
InstanceOf: EstructuraOcular
Description: "Estructura anatómica del ojo derecho"
Usage: #example

* location.coding.system = "http://snomed.info/sct"
* location.coding.code = #81745001
* location.coding.display = "Estructura del ojo"
* locationQualifier[0].coding.system = "http://snomed.info/sct"
* locationQualifier[0].coding.code = #24028007
* locationQualifier[0].coding.display = "Derecho"
* patient = Reference(PacienteEjemplo)
* patient.display = "Pato Donald"

Instance: OjoIzquierdoEstructura
InstanceOf: EstructuraOcular
Description: "Estructura anatómica del ojo izquierdo"
Usage: #example

* location.coding.system = "http://snomed.info/sct"
* location.coding.code = #81745001
* location.coding.display = "Estructura del ojo"
* locationQualifier[0].coding.system = "http://snomed.info/sct"
* locationQualifier[0].coding.code = #7771000
* locationQualifier[0].coding.display = "Izquierdo"
* patient = Reference(PacienteEjemplo)
* patient.display = "Pato Donald"

Instance: AmbosOjosEstructura
InstanceOf: EstructuraOcular
Description: "Estructura anatómica de ambos ojos"
Usage: #example

* location.coding.system = "http://snomed.info/sct"
* location.coding.code = #81745001
* location.coding.display = "Estructura del ojo"
* locationQualifier[0].coding.system = "http://snomed.info/sct"
* locationQualifier[0].coding.code = #51440002
* locationQualifier[0].coding.display = "Bilateral"
* patient = Reference(PacienteEjemplo)
* patient.display = "Pato Donald"