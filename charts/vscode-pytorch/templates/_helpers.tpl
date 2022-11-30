{{/* vim: set filetype=mustache: */}}
{{- define "docker-image" -}}
{{- $name := "" }}
{{- if eq .Values.dependencies.library "tensorflow" }}
{{- $name = "inseefrlab/onyxia-vscode-tensorflow" }}
{{- else }}
{{- if eq .Values.dependencies.library "pytorch" }}
{{- $name = "inseefrlab/onyxia-vscode-pytorch" }}
{{- else }}
{{- $name = "inseefrlab/onyxia-vscode-python" }}
{{- end }}
{{- end }}
{{- printf $name -}}
{{- end }}