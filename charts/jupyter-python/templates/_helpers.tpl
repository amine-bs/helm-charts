{{/* vim: set filetype=mustache: */}}
{{- define "docker-image" -}}
{{- $name := "" }}
{{- if eq .Values.service.image.library "tensorflow" }}
{{- $name = "inseefrlab/onyxia-jupyter-tensorflow" }}
{{- else }}
{{- if eq .Values.service.image.library "pytorch" }}
{{- $name = "inseefrlab/onyxia-jupyter-pytorch" }}
{{- else }}
{{- $name = "inseefrlab/onyxia-jupyter-python" }}
{{- end }}
{{- end }}
{{- printf $name -}}
{{- end }}