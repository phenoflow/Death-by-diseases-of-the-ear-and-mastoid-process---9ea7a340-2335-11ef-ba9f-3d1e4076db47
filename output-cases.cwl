$namespaces:
  s: http://phenomics.kcl.ac.uk/phenoflow/
baseCommand: python
class: CommandLineTool
cwlVersion: v1.0
doc: Output cases
inputs:
- doc: Python implementation unit
  id: inputModule
  inputBinding:
    position: 1
  type: File
- doc: Potential cases of Death-by-diseases-of-the-ear-and-mastoid-process
  id: potentialCases
  inputBinding:
    position: 2
  type: File
outputs:
- doc: Output containing patients flagged as having this type of Death-by-diseases-of-the-ear-and-mastoid-process
  id: output
  outputBinding:
    glob: '*.csv'
  type: File
requirements:
  DockerRequirement:
    dockerPull: kclhi/python:latest
s:type: output