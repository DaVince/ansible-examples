#!/bin/bash
docker build -t ansible_examples .
docker run --name ansible_examples --rm -i -t ansible_examples ./run-ansible.sh
