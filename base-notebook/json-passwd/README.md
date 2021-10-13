# json-passwd

json-passwd provides a tool suite to manage `/var/db/passwd.db` and
`/var/db/group.db` based on external json-formatted data files.  This is
useful in environments where a) you don't have a fully functional
directory (and, perhaps, can't have one for political reasons) and b) you
want the work of creating lists of users/groups to be separate from the
work of actually deploying those users/groups on a system.

This package does not provide any tools to create the json data files;
that's up to the client.  But it provides the tools by which you can
consume that data and create the .db files.  (You'll want to set up cron
jobs in e.g. puppet as well to run these scripts on a regular basis).

## json format

We don't have a "formal" definition of the format yet, but this is what
we've done so far:

### groups

    { 
        "generationTime": 1441787405, 
        "groups": {
            "foo": {
                "gid": "1234", 
                "users": "abigail,beatrice"
            }, 
            "bar": {
                "gid": "5678", 
                "users": "abigail,daphne"
            }, 
        },
        "numberOfGroups": 2
    }

### passwd

    {
        "generationTime": 1441910561, 
        "numberOfUsers": 2, 
        "users": {
            "abigail": {
                "comment": "a.b", 
                "gid": "4444", 
                "homedir": "/home/abigail", 
                "shell": "/bin/true", 
                "uid": "4445"
            },
            "beatrice": {
                "comment": "b.c", 
                "gid": "3333", 
                "homedir": "/home/beatrice", 
                "shell": "/bin/true", 
                "uid": "3334"
            }
        }
    }
