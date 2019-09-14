apiVersion: v1
items:
- apiVersion: v1
  kind: BuildConfig
  metadata:
    annotations:
      openshift.io/generated-by: OpenShiftNewApp
    creationTimestamp: null
    labels:
      app: spring-demo
    name: spring-demo
  spec:
    nodeSelector: null
    output: {}
    postCommit: {}
    resources: {}
    source:
      git:
        uri: https://github.com/nagenra87k/spring-boot-openshift.git
      type: Git
    strategy:
      jenkinsPipelineStrategy: {}
      type: JenkinsPipeline
    triggers:
    hard:
        configmaps: "10"
        persistentvolumeclaims: "4"
        replicationcontrollers: "20"
        secrets: "10" 4
        services: "10"
  status:
    lastVersion: 0
kind: List
metadata: {}