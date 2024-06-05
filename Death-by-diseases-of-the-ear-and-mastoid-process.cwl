cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-function---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-function---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-specified---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-function---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-cholesteatoma---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-cholesteatoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-specified---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-middle---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-middle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-cholesteatoma---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-eustachian---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-eustachian---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-middle---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-externa---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-externa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-eustachian---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-classified---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-externa---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-classified---secondary/output
  parasitic-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: parasitic-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  noninfective-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: noninfective-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: parasitic-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  sensorineural-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: sensorineural-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: noninfective-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  viral-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: viral-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: sensorineural-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-condition---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-condition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: viral-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  inner-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: inner-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-condition---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-perforation---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-perforation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: inner-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  chronic-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: chronic-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-perforation---secondary/output
  bilateral-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: bilateral-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-contralat---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-contralat---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: bilateral-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  serous-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: serous-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-contralat---secondary/output
  acute-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: acute-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: serous-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-acquired---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-acquired---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: acute-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  bacterial-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: bacterial-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-acquired---secondary/output
  mixed-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: mixed-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: bacterial-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-window---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-window---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: mixed-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-effusion---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-effusion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-window---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-obstruction---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-obstruction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-effusion---secondary/output
  nonsuppurative-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: nonsuppurative-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-obstruction---secondary/output
  central-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary:
    run: central-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: nonsuppurative-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-otosclerosis---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-otosclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: central-death-by-diseases-of-the-ear-and-mastoid-process-natural-cause---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-myringitis---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-myringitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-otosclerosis---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-ossicle---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-ossicle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-myringitis---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-vertigo---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-vertigo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-ossicle---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-syndrome---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-syndrome---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-vertigo---secondary/output
  death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-membrane---secondary:
    run: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-membrane---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-syndrome---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-ear-and-mastoid-process-natural-cause-membrane---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
