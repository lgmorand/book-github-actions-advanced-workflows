---
title: Algorithm
weight: 22
---

## How it works

The application a unique algorithm to perform the generation of entries in EXSP

{{% steps %}}

### Impersonation

The application tries to impersonate your profile to connect to:
    - your Outlook through the Graph API
    - MSX to retrieve opportunities
    - to EXSP to retrieve your ROSS assignments and your existing tracked hours

### Retrieve vacations

Then it retrieves all your vacations because vacations days should not be tracked.

### Existing hours

Retrieves all your existing hours in ESXP in case you already tracked hours manually or during a previous run.

### Outlook Calendar events

Retrieves all your calendar events and parse them to extract relevant meetings (the ones marked with categories, the other ones are ignored).
For each of the categorized event, the app will create a labor entry matching the day, the duration and the category. (It's using the server version of outlook (GraphApi) and thus has no dependency on a specific version of Outlook client)

### Getting Ross

If you have VBD or self-dispatch, the tool will take them into account to create an entry matching the tracking you should do.

{{< callout type="warning" >}}
 If you create a self-dispatch of 8 hrs for a specific day, the app will track 8 hrs for this day. the app is not capable of understanding and split the tracking among several days.
{{< /callout >}}

### Fill up

 When all "real" entries have be generated, a last step happens.
 Because some managers ask you to track 40 hours of activity per week, the application can automatically create fake entry until you reach 40 hours. There are random labor entry but always matching non-customer events, and in case of customer activity (i.e. opportunity), will use a random Opportunity from your MSX.

{{< callout type="info" >}}
 Because of rounding hours, some hours may be more or less 8 hrs and it can also happens that total of hours is above 40 hrs. It's because the number of events in your calendar + ROSS are above 40 hrs and it's perfectly OK. The only issue is when you timetracking more than 60 hrs a week or more than two days with 12 hrs a week.
{{< /callout >}}

{{% /steps %}}
