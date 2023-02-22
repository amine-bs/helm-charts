# airflow

![Version: 0.1.6](https://img.shields.io/badge/Version-0.1.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1](https://img.shields.io/badge/AppVersion-1-informational?style=flat-square)

Airflow is a platform created by the community to programmatically author, schedule and monitor workflows.

**Homepage:** <https://airflow.apache.org/>

## Source Code

* <https://github.com/InseeFrLab/helm-charts-automation/tree/master/charts/airflow>
* <https://github.com/apache/airflow>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://airflow-helm.github.io/charts/ | airflow | 8.6.1 |
| https://inseefrlab.github.io/helm-charts-interactive-services | library-chart | 1.3.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| airflow.airflow.config.AIRFLOW__API__AUTH_BACKEND | string | `"airflow.api.auth.backend.default"` |  |
| airflow.airflow.config.AIRFLOW__CORE__LOAD_EXAMPLES | string | `"False"` |  |
| airflow.airflow.config.AIRFLOW__KUBERNETES__NAMESPACE | string | `"default"` |  |
| airflow.airflow.config.AIRFLOW__KUBERNETES__WORKER_CONTAINER_REPOSITORY | string | `"apache/airflow"` |  |
| airflow.airflow.config.AIRFLOW__KUBERNETES__WORKER_CONTAINER_TAG | string | `"2.2.5-python3.8"` |  |
| airflow.airflow.config.AIRFLOW__WEBSERVER__AUTH_BACKEND | string | `"airflow.contrib.auth.backends.password_auth"` |  |
| airflow.airflow.config.AIRFLOW__WEBSERVER__EXPOSE_CONFIG | string | `"True"` |  |
| airflow.airflow.connections | list | `[]` |  |
| airflow.airflow.executor | string | `"KubernetesExecutor"` |  |
| airflow.airflow.extraEnv[0].name | string | `"AIRFLOW__CODE_EDITOR__ENABLED"` |  |
| airflow.airflow.extraEnv[0].value | string | `"True"` |  |
| airflow.airflow.extraEnv[1].name | string | `"AIRFLOW__CODE_EDITOR__GIT_ENABLED"` |  |
| airflow.airflow.extraEnv[1].value | string | `"False"` |  |
| airflow.airflow.extraEnv[2].name | string | `"AIRFLOW__CODE_EDITOR__MOUNT"` |  |
| airflow.airflow.extraEnv[2].value | string | `"name=logs,path=/opt/airflow/logs"` |  |
| airflow.airflow.extraEnv[3].name | string | `"AIRFLOW__SCHEDULER__DAG_DIR_LIST_INTERVAL"` |  |
| airflow.airflow.extraEnv[3].value | string | `"30"` |  |
| airflow.airflow.extraPipPackages | list | `[]` |  |
| airflow.airflow.extraVolumeMounts | list | `[]` |  |
| airflow.airflow.extraVolumes | list | `[]` |  |
| airflow.airflow.fernetKey | string | `"7T512UXSSmBOkpWimFHIVb8jK6lfmSAvx4mO6Arehnc="` |  |
| airflow.airflow.image.repository | string | `"apache/airflow"` |  |
| airflow.airflow.image.tag | string | `"2.2.5-python3.8"` |  |
| airflow.airflow.kubernetesPodTemplate.extraPipPackages | list | `[]` |  |
| airflow.airflow.kubernetesPodTemplate.extraVolumeMounts | list | `[]` |  |
| airflow.airflow.kubernetesPodTemplate.extraVolumes | list | `[]` |  |
| airflow.airflow.kubernetesPodTemplate.resources | object | `{}` |  |
| airflow.airflow.kubernetesPodTemplate.stringOverride | string | `""` |  |
| airflow.airflow.legacyCommands | bool | `false` |  |
| airflow.airflow.pools | list | `[]` |  |
| airflow.airflow.usersTemplates.password.key | string | `"password"` |  |
| airflow.airflow.usersTemplates.password.kind | string | `"secret"` |  |
| airflow.airflow.usersTemplates.password.name | string | `"airflow-password-secret"` |  |
| airflow.airflow.users[0].email | string | `"admin@example.com"` |  |
| airflow.airflow.users[0].firstName | string | `"admin"` |  |
| airflow.airflow.users[0].lastName | string | `"admin"` |  |
| airflow.airflow.users[0].password | string | `"${password}"` |  |
| airflow.airflow.users[0].role | string | `"Admin"` |  |
| airflow.airflow.users[0].username | string | `"admin"` |  |
| airflow.airflow.variables | list | `[]` |  |
| airflow.airflow.webserverSecretKey | string | `"THIS IS UNSAFE!"` |  |
| airflow.dags.gitSync.branch | string | `"main"` |  |
| airflow.dags.gitSync.enabled | bool | `true` |  |
| airflow.dags.gitSync.httpSecret | string | `"airflow-http-git-secret"` |  |
| airflow.dags.gitSync.httpSecretPasswordKey | string | `"password"` |  |
| airflow.dags.gitSync.httpSecretUsernameKey | string | `"username"` |  |
| airflow.dags.gitSync.repo | string | `"https://github.com/amine-bs/airflow-test.git"` |  |
| airflow.dags.gitSync.revision | string | `"HEAD"` |  |
| airflow.dags.gitSync.syncWait | int | `30` |  |
| airflow.dags.gitSync.token | string | `"token"` |  |
| airflow.dags.gitSync.username | string | `"user"` |  |
| airflow.dags.path | string | `"/opt/airflow/dags"` |  |
| airflow.dags.persistence.accessMode | string | `"ReadWriteMany"` |  |
| airflow.dags.persistence.enabled | bool | `false` |  |
| airflow.dags.persistence.size | string | `"1Gi"` |  |
| airflow.dags.persistence.storageClass | string | `""` |  |
| airflow.externalDatabase.type | string | `"postgres"` |  |
| airflow.externalRedis.host | string | `"localhost"` |  |
| airflow.extraManifests | list | `[]` |  |
| airflow.flower.enabled | bool | `false` |  |
| airflow.ingress.enabled | bool | `true` |  |
| airflow.ingress.web.annotations | object | `{}` |  |
| airflow.ingress.web.host | string | `"example-chart.local"` |  |
| airflow.ingress.web.ingressClassName | string | `""` |  |
| airflow.ingress.web.tls.enabled | bool | `true` |  |
| airflow.logs.path | string | `"/opt/airflow/logs"` |  |
| airflow.logs.persistence.enabled | bool | `false` |  |
| airflow.pgbouncer.authType | string | `"md5"` |  |
| airflow.pgbouncer.enabled | bool | `false` |  |
| airflow.pgbouncer.resources | object | `{}` |  |
| airflow.postgresql.enabled | bool | `true` |  |
| airflow.postgresql.existingSecret | string | `""` |  |
| airflow.postgresql.existingSecretKey | string | `"postgresql-password"` |  |
| airflow.postgresql.persistence.enabled | bool | `true` |  |
| airflow.postgresql.persistence.size | string | `"8Gi"` |  |
| airflow.postgresql.persistence.storageClass | string | `""` |  |
| airflow.postgresql.postgresqlDatabase | string | `"airflow"` |  |
| airflow.postgresql.postgresqlPassword | string | `"airflow"` |  |
| airflow.postgresql.postgresqlUsername | string | `"postgres"` |  |
| airflow.redis.enabled | bool | `false` |  |
| airflow.scheduler.livenessProbe.enabled | bool | `true` |  |
| airflow.scheduler.livenessProbe.taskCreationCheck.enabled | bool | `false` |  |
| airflow.scheduler.livenessProbe.taskCreationCheck.schedulerAgeBeforeCheck | int | `180` |  |
| airflow.scheduler.livenessProbe.taskCreationCheck.thresholdSeconds | int | `300` |  |
| airflow.scheduler.logCleanup.enabled | bool | `true` |  |
| airflow.scheduler.logCleanup.retentionMinutes | int | `21600` |  |
| airflow.scheduler.replicas | int | `1` |  |
| airflow.scheduler.resources | object | `{}` |  |
| airflow.serviceAccount.annotations | object | `{}` |  |
| airflow.serviceAccount.create | bool | `true` |  |
| airflow.serviceAccount.name | string | `""` |  |
| airflow.triggerer.capacity | int | `1000` |  |
| airflow.triggerer.enabled | bool | `true` |  |
| airflow.triggerer.replicas | int | `1` |  |
| airflow.triggerer.resources | object | `{}` |  |
| airflow.web.extraPipPackages[0] | string | `"airflow-code-editor==7.2.0"` |  |
| airflow.web.replicas | int | `1` |  |
| airflow.web.resources | object | `{}` |  |
| airflow.web.service.externalPort | int | `8080` |  |
| airflow.web.service.type | string | `"ClusterIP"` |  |
| airflow.web.webserverConfig.existingSecret | string | `""` |  |
| airflow.web.webserverConfig.stringOverride | string | `"from airflow import configuration as conf\nfrom flask_appbuilder.security.manager import AUTH_DB\n\n# the SQLAlchemy connection string\nSQLALCHEMY_DATABASE_URI = conf.get(\"core\", \"SQL_ALCHEMY_CONN\")\n\n# use embedded DB for auth\nAUTH_TYPE = AUTH_DB\n"` |  |
| airflow.workers.enabled | bool | `false` |  |
| security.allowlist.enabled | bool | `true` |  |
| security.allowlist.ip | string | `"0.0.0.0/0"` |  |
| security.networkPolicy.enabled | bool | `true` |  |
| security.networkPolicy.from | list | `[]` |  |
| security.password | string | `"admin"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
