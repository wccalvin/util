#!/usr/bin/env python3
import os

path = os.path.abspath(os.getcwd())

found_files_to_delete = []
for root, dirs, files in os.walk(path):
    for name in files:
        if name.endswith('~'):
            found_files_to_delete.append(os.path.join(root, name))
        if name.endswith('#'):
            found_files_to_delete.append(os.path.join(root, name))
        if name.endswith('.pyc'):
            found_files_to_delete.append(os.path.join(root, name))

if len(found_files_to_delete) > 0:
    for name in found_files_to_delete:
        print('Deleting: {}'.format(name))
        os.remove(name)
else:
    print('Nothing found to delete.')
