class bar ($fiz = '') {
  notify { 'we called bar from the nodes definitions': }

  # when using variables "double quotes" ensure
  # that the variable gets expanded
  file {"/tmp/$fiz":

    # where using 'single quotes' ensures that it is
    # evaluated as is
    content => '$fiz',
  }
}
