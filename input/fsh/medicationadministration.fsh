Profile: AdministracionMedicamentoOftalmologico
Parent: MedicationAdministration
Id: administracion-medicamento-oftalmologico
Title: "Administración de Medicamento Oftalmológico"
Description: "Perfil para registrar la administración de medicamentos en procedimientos oftalmológicos"

* status 1..1 MS
* medication[x] 1..1 MS
* subject 1..1 MS
* context 0..1 MS
* effective[x] 1..1 MS
* performer 1..* MS
* dosage 1..1 MS
* dosage.route 1..1 MS
* dosage.dose 1..1 MS
* dosage.site 0..1 MS
* note 0..* MS
* supportingInformation 0..* MS

Instance: AdministracionAvastinDosis1Ejemplo
InstanceOf: AdministracionMedicamentoOftalmologico
Description: "Ejemplo de primera dosis de Avastin intravítrea en ojo izquierdo"
Usage: #example

* status = #completed
* medicationReference = Reference(MedicamentoAvastinEjemplo)
* medicationReference.display = "Bevacizumab (Avastin)"
* subject = Reference(PacienteEjemplo)
* subject.display = "Pato Donalds"
* context = Reference(EncuentroEjemplo)
* context.display = "Consulta oftalmológica ambulatoria"
* effectiveDateTime = "2025-03-15T11:00:00-03:00"
* performer[0].actor.display = "Dr. Mickey Mouse"
* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #1004045004
* dosage.route.coding.display = "Inyección intravítrea"
* dosage.dose.value = 1.25
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mg
* dosage.site.coding.system = "http://snomed.info/sct"
* dosage.site.coding.code = #81745001
* dosage.site.coding.display = "Ojo"
* supportingInformation[0] = Reference(PlanInyeccionesAvastinEjemplo)
* supportingInformation[0].display = "Plan de inyecciones intravítreas de Avastin"
* note[0].text = "Dosis 1 de 3. Paciente tolera bien el procedimiento. Sin complicaciones inmediatas."