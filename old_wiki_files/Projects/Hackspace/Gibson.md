Hacker Management System. Haxor teh gibson.

Basic system plans
------------------

Aim for PHP 5.3+, Apache 2.2+ and MySQL.

Development Plan
----------------

1.  Users can register with information we need to register a member.
    They are then emailed a password.
2.  Users can log in using their credentials. username or email plus
    password. Once logged in they can see a page with their information,
    and the hackspace bank details for setting up standing orders.
3.  Users can update information stored against themselves. This
    includes RFID\# and nickname.
4.  Users can have permissions attached the their account. Default
    permissions include 'member'=true, 'admin'=false, 'open inner
    door'=true and 'open outer door'=true
5.  Admins can edit other user's information + permissions
6.  RFID systems can pull back a csv file with all 'members' with a
    'open door' permission. This is added to ALFRED and ALVIN for access
    to the space.
7.  Add link to allow user to set up gocardless payments for membership
    fees.
8.  API. If API user has user privileges, allow them to update their own
    details. If they have admin privileges, allow them to update
    anyone's details + permissions.

Once API is up
--------------

-   Have kiosk machine set up with RFID reader so users can easily
    update their RFID details.
-   For users using GoCardless, Automatically say if a user is a member
    or not depending on when their last membership payment was received.
    If they are not a member they lose the member permission.
-   For users with bank transfer, do the same thing.
-   Snackspace Kiosk integration.

[Category:Projects](Category:Projects "wikilink")