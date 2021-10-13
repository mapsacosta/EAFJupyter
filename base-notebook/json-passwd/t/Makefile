test-gpgrid: test-passwd-gpgrid test-group-gpgrid
test-nova: test-passwd-nova test-group-nova
test-file: test-passwdfile-nova test-groupfile-nova

## passwddb/groupddb

test-group-gpgrid:
	JPCONF=./config.gpgrid ../usr/sbin/json-fetchgroupdb --test

test-group-nova:
	JPCONF=./config.nova ../usr/sbin/json-fetchgroupdb --test

test-passwd:
	JPCONF=./config ../usr/sbin/json-fetchpasswddb --test

test-passwd-gpgrid:
	JPCONF=./config.gpgrid ../usr/sbin/json-fetchpasswddb --test

test-passwd-nova:
	JPCONF=./config.nova ../usr/sbin/json-fetchpasswddb --test

## passwdfile/groupfile

test-passwdfile-gpgrid:
	JPCONF=./config.gpgrid ../usr/sbin/json-fetchpasswdfile --test

test-passwdfile-nova:
	JPCONF=./config.nova ../usr/sbin/json-fetchpasswdfile --test

test-groupfile-gpgrid:
	JPCONF=./config.gpgrid ../usr/sbin/json-fetchgroupfile --test

test-groupfile-nova:
	JPCONF=./config.nova ../usr/sbin/json-fetchgroupfile --test
