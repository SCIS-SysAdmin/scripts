# Reset UI of User and Exam accounts

## User accounts

When users open their new accounts they MUST select the **default panel view** else they will get empty panel. If they fail to select the default view. Use the following script to reset the UI on user accounts.

**NOTE:** Make sure the user is logged out of the session and the system is turned off.

```bash
./fixUserAccounts <enrollNo> <course Directory>
```

Example: `./fixUserAccounts.sh 18mcmi04 mtech`

Course Directories: `faculty  imtech  mca  mtech  phd  sip`

## Exam accounts

The menu and title bar of some accounts might vanish or UI doesn't look the way it should. Most probably `xfwm4` service might not be running. Use the following script to make sure the service is running fine.

```bash
./fixExamAccounts.sh <machineIP>
```

Example: `./fixExamAccounts.sh 10.5.0.71`