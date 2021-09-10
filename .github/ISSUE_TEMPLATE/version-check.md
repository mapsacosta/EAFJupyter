---
name: Version check issue for coffea-dask-gateway-eaf build
about: A CoffeaTeam and or EAF developer needs to approve the versions before triggering the environment change. Used for taking notes in our daily standups, with a new issue every week.
title: "Version check for coffea-dask-gateway-eaf build - {{ date | date('MMMM Do') }}"
labels:
  - "admin-approve"
  - "high-prio"
---
### Facility ADMINS read carefully:
Please revisit the following package versions changed recently at repository "$GITHUB_REPOSITORY" by "$GITHUB_ACTOR" registered as 'Fermilab-EAF'
This means that the synchronized file for version locks was modified by a :

Commit information:
```
commit 6b40b192f27beeb142418b53a9e31ef290fe1b97
Author: macosta <macosta@fnal.gov>
Date:   Thu Sep 9 20:54:17 2021 -0500

    Removing redundant pre-issue step
```

This will trigger builds in a lot of places, so make sure the new pinned version locks are accurate:
