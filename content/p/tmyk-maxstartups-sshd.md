---
title: TMYK - The MaxStartups keyword in SSHD config
date: 2020-05-27
---

Thanks to Michael W. Lucas's excellent _[SSH Mastery, 2nd edition](https://www.tiltedwindmillpress.com/product/ssh-mastery-2nd-edition/)_, I just found out about `MaxStartups` keyword for the SSHD configuration.

To cite the `sshd_config` manual page:
```text
 MaxStartups
 Specifies the maximum number of concurrent unauthenticated connections to the SSH daemon.  Additional connections will be dropped
 until authentication succeeds or the LoginGraceTime expires for a connection.  The default is 10:30:100.

 Alternatively, random early drop can be enabled by specifying the three colon separated values start:rate:full (e.g. "10:30:60").
 sshd(8) will refuse connection attempts with a probability of rate/100 (30%) if there are currently start (10) unauthenticated
 connections.  The probability increases linearly and all connection attempts are refused if the number of unauthenticated connec‐
 tions reaches full (60).
```

This can be useful in the context of a DOS attack. Even before authentication, a connection to sshd spawn a new process.
All these processes overhead can (and will) put the server under a heavy load, sometimes keeping sysadmins from connecting.
With `MaxStartups` set, you can be sure, if you try enough times (and with the right credentials), to get a connection to that machine.
That would also prevent the processes already running on the machine from being affacted by all this overhead.

I think it's a must have for any ssh server facing the internet.


__The More You Know.__
