Profile: ProcedimientoOftalmologia
Parent: Procedure
Id: procedimiento-oftalmologia
Title: "Procedimiento Oftalmológico"
Description: "Perfil de procedimientos oftalmológicos"

* basedOn 1..* MS
* partOf 0..* MS
* status 1..1 MS
* statusReason 0..1 MS
* category 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* encounter 1..1 MS
* performed[x] 1..1 MS
* performer 1..1 MS
* reasonCode 0..* MS
* bodySite 1..1 MS
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/bodySite named bodySiteRef 0..1 MS
* outcome 0..1 MS
* complication 0..* MS
* report 0..* MS
* followUp 0..* MS
* usedCode 0..* MS
* focalDevice 0..* MS
* note 0..* MS

//CIRUGÍA DE CATARATA
Instance: ProcedimientoEjemploCatarata
InstanceOf: ProcedimientoOftalmologia
Description: "Ejemplo de cirugía de cataratas con implante de lente intraocular"
Usage: #example

* basedOn.display = "Orden quirúrgica para facoemulsificación"
* status = #completed
* category.coding.system = "http://snomed.info/sct"
* category.coding.code = #387713003
* category.coding.display = "Procedimiento quirúrgico"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #415070008
* code.coding.display = "Facoemulsificación de catarata con implante de lente intraocular"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* encounter.display = "Consulta oftalmológica ambulatoria"
* performedDateTime = "2025-03-20T10:00:00-03:00"
* performer[0].actor.display = "Dr. Mickey Mouse"
* reasonCode[0].coding.system = "http://snomed.info/sct"
* reasonCode[0].coding.code = #53889007
* reasonCode[0].coding.display = "Catarata nuclear"
* bodySite.coding.system = "http://snomed.info/sct"
* bodySite.coding.code = #81745001
* bodySite.coding.display = "Estructura del ojo"
* bodySite.extension[bodySiteRef].valueReference = Reference(OjoIzquierdoEstructura)
* outcome.coding.system = "http://snomed.info/sct"
* outcome.coding.code = #385669000
* outcome.coding.display = "Resultado exitoso"
* complication[0].coding.system = "http://snomed.info/sct"
* complication[0].coding.code = #281900007
* complication[0].coding.display = "Sin complicaciones"
* focalDevice[0].action.coding.system = "http://snomed.info/sct"
* focalDevice[0].action.coding.code = #69724002
* focalDevice[0].action.coding.display = "Implante de lente intraocular"
* focalDevice[0].manipulated = Reference(LenteIntraocularEjemplo)
* focalDevice[0].manipulated.display = "Lente intraocular monofocal +21.0D"
* followUp[0].coding.system = "http://snomed.info/sct"
* followUp[0].coding.code = #1297244003
* followUp[0].coding.display = "Control postoperatorio"
* note[0].text = "Cirugía sin complicaciones. Paciente tolera bien el procedimiento. Control en 24 horas."

//INYECCIÓN INTRAVÍTREA

Instance: ProcedimientoEjemploInyeccion
InstanceOf: ProcedimientoOftalmologia
Description: "Ejemplo de inyección intravítrea de Avastin"
Usage: #example

* basedOn.display = "Plan de inyecciones intravítreas de Avastin"
* partOf = Reference(AdministracionAvastinDosis1Ejemplo)
* partOf.display = "Administración de Avastin - Dosis 1"
* status = #completed
* category.coding.system = "http://snomed.info/sct"
* category.coding.code = #371883000
* category.coding.display = "Procedimiento ambulatorio"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #36692007
* code.coding.display = "Inyección intravítrea"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* encounter.display = "Consulta oftalmológica ambulatoria"
* performedDateTime = "2025-03-15T11:00:00-03:00"
* performer[0].actor.display = "Dr. Mickey Mouse"
* reasonCode[0].coding.system = "http://snomed.info/sct"
* reasonCode[0].coding.code = #267718000
* reasonCode[0].coding.display = "Degeneración macular relacionada con la edad"
* bodySite.coding.system = "http://snomed.info/sct"
* bodySite.coding.code = #81745001
* bodySite.coding.display = "Estructura del ojo"
* bodySite.extension[http://hl7.org/fhir/StructureDefinition/bodySite].valueReference = Reference(OjoIzquierdoEstructura)
* outcome.coding.system = "http://snomed.info/sct"
* outcome.coding.code = #385669000
* outcome.coding.display = "Resultado exitoso"
* note[0].text = "Inyección intravítrea de Avastin 1.25mg en ojo izquierdo. Dosis 1 de 3. Sin complicaciones."

//TOMOGRAFÍA

Instance: ProcedimientoEjemploTomografia
InstanceOf: ProcedimientoOftalmologia
Description: "Ejemplo de tomografía de coherencia óptica (OCT)"
Usage: #example

* basedOn.display = "Orden de OCT macular y papila"
* status = #completed
* category.coding.system = "http://snomed.info/sct"
* category.coding.code = #363679005
* category.coding.display = "Procedimiento diagnóstico por imágenes"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #700070005
* code.coding.display = "Tomografía de coherencia óptica de retina"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donald"
* encounter = Reference(EncuentroEjemplo)
* encounter.display = "Consulta oftalmológica ambulatoria"
* performedDateTime = "2025-03-15T11:30:00-03:00"
* performer[0].actor.display = "TMO. Minnie Mouse"
* reasonCode[0].coding.system = "http://snomed.info/sct"
* reasonCode[0].coding.code = #267718000
* reasonCode[0].coding.display = "Degeneración macular relacionada con la edad"
* bodySite.coding.system = "http://snomed.info/sct"
* bodySite.coding.code = #5665001
* bodySite.coding.display = "Retina"
* bodySite.extension[lateralidad].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* bodySite.extension[lateralidad].valueCodeableConcept.coding.code = #7771000
* bodySite.extension[lateralidad].valueCodeableConcept.coding.display = "Izquierdo"
* outcome.coding.system = "http://snomed.info/sct"
* outcome.coding.code = #385669000
* outcome.coding.display = "Resultado exitoso"
* note[0].text = "OCT macular y de papila ojo izquierdo. Spectralis Heidelberg."