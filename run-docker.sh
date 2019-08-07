#!/bin/bash
docker build -t ansible_examples .
docker run --name ansible_examples --rm -i -t --expose 8081 ansible_examples ./run-ansible.sh
