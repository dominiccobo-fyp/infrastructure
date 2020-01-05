{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.ghDockerRegistryCredentials.registry (printf "%s:%s" .Values.ghDockerRegistryCredentials.username .Values.ghDockerRegistryCredentials.password | b64enc) | b64enc }}
{{- end }}