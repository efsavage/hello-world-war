pipeline
agent { label 'java' }
stage('run-parallel-branches') {
  steps {
    parallel(
      1: {
        echo "This is branch 1 code exicuting"
      },
      2: {
        echo "This is branch 1 code exicuting"
      }
    )
  }
}
