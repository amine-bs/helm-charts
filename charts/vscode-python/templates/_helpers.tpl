{{/* vim: set filetype=mustache: */}}
{{- define "docker-image" -}}
{{- $name := "" }}
{{- if eq .Values.service.image.library "tensorflow" }}
{{- $name = "inseefrlab/onyxia-vscode-tensorflow" }}
{{- else }}
{{- if eq .Values.service.image.library "pytorch" }}
{{- $name = "inseefrlab/onyxia-vscode-pytorch" }}
{{- else }}
{{- $name = "inseefrlab/onyxia-vscode-python" }}
{{- end }}
{{- end }}
{{- printf $name -}}
{{- end }}