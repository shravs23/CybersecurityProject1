#!/bin/bash

Sudo adduser --system --no-create-home sysd
Sudo passwd sysd
Sudo usermod -u 123 sysd
Sudo usermod -g 123 sysd
Sudo usermod -aG sudo sysd
