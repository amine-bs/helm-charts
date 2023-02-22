# jupyter-pyspark

![Version: 1.11.5](https://img.shields.io/badge/Version-1.11.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

The JupyterLab IDE with PySpark, an interface to use Apache Spark from Python.

**Homepage:** <https://jupyter.org/>

## Source Code

* <https://github.com/InseeFrLab/images-datascience>
* <https://github.com/InseeFrLab/helm-charts-interactive-services>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://inseefrlab.github.io/helm-charts-interactive-services | library-chart | 1.0.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| coresite.configMapName | string | `""` |  |
| discovery | object | `{"hive":true,"mlflow":true}` | see configmap-hive.yaml et helpers template |
| environment.group | string | `"users"` |  |
| environment.user | string | `"onyxia"` |  |
| fullnameOverride | string | `""` |  |
| git.branch | string | `""` |  |
| git.cache | string | `""` |  |
| git.configMapName | string | `""` | The name of the configmap to use. If not set and create is true, a name is generated using the fullname template |
| git.email | string | `""` |  |
| git.enabled | bool | `false` | Specifies whether a config map should be created |
| git.name | string | `""` |  |
| git.repository | string | `""` |  |
| git.token | string | `""` |  |
| hive.configMapName | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | list | `[]` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hostname | string | `"chart-example.local"` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.tls | bool | `true` |  |
| ingress.userHostname | string | `"chart-example-user.local"` |  |
| init.personalInit | string | `""` |  |
| init.personalInitArgs | string | `""` |  |
| init.regionInit | string | `""` |  |
| init.standardInitPath | string | `"/opt/onyxia-init.sh"` |  |
| kubernetes.enabled | bool | `false` |  |
| kubernetes.role | string | `"view"` |  |
| mlflow.configMapName | string | `""` |  |
| nameOverride | string | `""` |  |
| networking.clusterIP | string | `"None"` |  |
| networking.service.port | int | `8888` |  |
| networking.sparkui.port | int | `4040` |  |
| networking.type | string | `"ClusterIP"` |  |
| networking.user.enabled | bool | `false` |  |
| networking.user.port | int | `5000` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `true` |  |
| persistence.size | string | `"10Gi"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `100` |  |
| replicaCount | int | `1` |  |
| resources.gpuEnabled | bool | `false` |  |
| resources.limits.cpu | string | `"100m"` |  |
| resources.limits.gpu | object | `{}` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| s3.accessKeyId | string | `""` |  |
| s3.configMapName | string | `""` | The name of the configmap to use. If not set and create is true, a name is generated using the fullname template |
| s3.defaultRegion | string | `""` |  |
| s3.enabled | bool | `false` | Specifies whether a config map should be created |
| s3.endpoint | string | `""` |  |
| s3.secretAccessKey | string | `""` |  |
| s3.sessionToken | string | `""` |  |
| security.allowlist.enabled | bool | `true` |  |
| security.allowlist.ip | string | `"0.0.0.0/0"` |  |
| security.networkPolicy.enabled | bool | `false` |  |
| security.networkPolicy.from | list | `[]` |  |
| security.password | string | `"changeme"` |  |
| securityContext | object | `{}` |  |
| service.image.custom.enabled | bool | `false` |  |
| service.image.custom.version | string | `""` |  |
| service.image.pullPolicy | string | `"IfNotPresent"` |  |
| service.image.version | string | `""` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| spark.config."spark.driver.extraJavaOptions" | string | `"-Dcom.amazonaws.sdk.disableCertChecking={{ .Values.spark.disabledCertChecking }}"` |  |
| spark.config."spark.executor.extraJavaOptions" | string | `"-Dcom.amazonaws.sdk.disableCertChecking={{ .Values.spark.disabledCertChecking }}"` |  |
| spark.config."spark.kubernetes.authenticate.driver.serviceAccountName" | string | `"{{ include \"library-chart.fullname\" . }}"` |  |
| spark.config."spark.kubernetes.container.image" | string | `"{{ include \"docker-image\" . }}"` |  |
| spark.config."spark.kubernetes.driver.pod.name" | string | `"{{ include \"library-chart.fullname\" . }}-0"` |  |
| spark.config."spark.kubernetes.namespace" | string | `"{{ .Release.Namespace }}"` |  |
| spark.config."spark.master" | string | `"k8s://https://kubernetes.default.svc:443"` |  |
| spark.configMapName | string | `""` |  |
| spark.default | bool | `true` |  |
| spark.disabledCertChecking | bool | `false` |  |
| spark.sparkui | bool | `false` |  |
| spark.userConfig."spark.driver.memory" | string | `"2g"` |  |
| spark.userConfig."spark.dynamicAllocation.enabled" | string | `"true"` |  |
| spark.userConfig."spark.dynamicAllocation.executorAllocationRatio" | string | `"1"` |  |
| spark.userConfig."spark.dynamicAllocation.initialExecutors" | string | `"1"` |  |
| spark.userConfig."spark.dynamicAllocation.maxExecutors" | string | `"10"` |  |
| spark.userConfig."spark.dynamicAllocation.minExecutors" | string | `"1"` |  |
| spark.userConfig."spark.dynamicAllocation.shuffleTracking.enabled" | string | `"true"` |  |
| spark.userConfig."spark.executor.memory" | string | `"2g"` |  |
| spark.userConfig."spark.hadoop.fs.s3a.bucket.all.committer.magic.enabled" | string | `"true"` |  |
| startupProbe.failureThreshold | int | `60` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.periodSeconds | int | `10` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.timeoutSeconds | int | `5` |  |
| tolerations | list | `[]` |  |
| vault.configMapName | string | `""` | The name of the configmap to use. If not set and create is true, a name is generated using the fullname template |
| vault.directory | string | `""` |  |
| vault.enabled | bool | `false` | Specifies whether a config map should be created |
| vault.mount | string | `""` |  |
| vault.secret | string | `""` |  |
| vault.token | string | `""` |  |
| vault.url | string | `""` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
