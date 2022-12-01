{{/* vim: set filetype=mustache: */}}
{{- define "docker-image" -}}
{{- $name := "" }}
{{- if .Values.service.image.custom.enabled }}
{{- $name := "{{ .Values.service.custom.version }}" }}
{{- else }}
{{- if  .Values.resources.gpuEnabled  }}
{{- $name = "inseefrlab/onyxia-rstudio-sparkr:{{ .Values.service.image.version}}-gpu" }}
{{- else }}
{{- $name = "inseefrlab/onyxia-rstudio-sparkr:{{ .Values.service.image.version}}" }}
{{- end }}
{{- end }}
{{- printf $name -}}
{{- end }}