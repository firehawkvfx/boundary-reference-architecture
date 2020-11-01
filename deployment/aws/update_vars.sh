#!/bin/bash

to_abs_path() {
  python -c "import os; print(os.path.abspath('$1'))"
}

export AWS_DEFAULT_REGION=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/\(.*\)[a-z]/\1/')