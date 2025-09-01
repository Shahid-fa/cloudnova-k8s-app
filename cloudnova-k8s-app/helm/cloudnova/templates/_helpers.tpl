{{- define "cloudnova.name" -}}
cloudnova
{{- end }}

{{- define "cloudnova.fullname" -}}
{{ include "cloudnova.name" . }}
{{- end }}