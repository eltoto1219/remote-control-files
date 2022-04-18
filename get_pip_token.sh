#!/bin/bash

aws codeartifact login --tool pip --repository nautilus-artifact-repository --domain nautilus-repository --domain-owner 471746330855\
	--region us-east-1
