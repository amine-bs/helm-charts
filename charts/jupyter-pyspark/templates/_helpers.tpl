{{/* vim: set filetype=mustache: */}}
{{- define "docker-image" -}}
{{- if .Values.service.image.custom.enabled }}
{{- printf  .Values.service.image.custom.version  }}
{{- else }}
{{- $image := "inseefrlab/onyxia-jupyter-pyspark" }}
{{- $tag := .Values.service.image.version }}
{{- if  .Values.resources.gpuEnabled  }}
{{- printf "%s:%s-gpu" $image $tag }}
{{- else }}
{{- printf "%s:%s" $image $tag }}
{{- end }}
{{- end }}
{{- end }}