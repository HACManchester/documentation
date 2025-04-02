# Google Cloud Platform
We use GCP for some automations and convenience functions, without having to think about or maintain any hardware. It also lets the board moderate this as they use G-Suite for boardy things, so it's all tied in nicely.

## Projects
Account: outreach @ hacman .org .uk

### New Member Signup - fob posting
✔️ Live

We now post fobs to new paid up members.

We pre-prepare sealed envelopes which have a fob and a welcome flyer, which has the ID of the enclosed fob written down.

When a new member signs up, the membership system emails `outreach @ hacman .org .uk` with their name and address. This email can be printed onto a label or written on one of the pre-prepared envelopes. This is then posted.

The new member gets their welcome pack, and is guided to add their new fob to their account, familiarising them with the membership system, and is given a link to hacman.org.uk/welcome which serves as a brief welcome guide.

You can find discussion here:
https://list.hacman.org.uk/t/space-reopening-welcome-packs/2854/10

### HacmanWordpressWeb
✔️ Live

This is jsut here for the Google Maps on our website, so that they don't display the warning about API keys.

### Forum Telegram Notifications
✔️ Live

This uses a Cloud Function, which posts to the Telegram bot `HacmanForumBot`. When someone posts to list.hacman.org.uk Discourse will fire a webhook to this Cloud Function, which checks whether the Telegram Bot should fire a notification, and if so, notifies the group.

The code is at https://github.com/HACManchester/Cloud-Forum2Telegram

### ContactFormToDiscourse
⚠️ Work In Progress

We have people wanting to get in touch on our website. An easy way to do this is using a contact form. 

#### Current situation
We currently have emails going to a helpdesk but this hasn't worked out as well as hoped, so the new aim is to have questions be sent to the community, publically so that there's visibility on where their question went.

#### Solution
The website contact forms will fire a request to a Cloud Function, which will in turn communicate with Discourse at list.hacman.org.uk to post a topic in a relevant category, under an new account with the users email address. This makes it easy to keep enquiries together, and moderate.

There's no repo yet, but the proof of concept has been completed with some rough code.

The key parts:
- Spam protection
  - Captcha or question to check they understand who we are
  - Pending approval of posts before publishing
- Account registration
  - If someone submits a form, they'll be able to set up an account under the email they used so that they can reply to any responses they get.
- Special board contact form
  - This won't go to the forum publically. This will go direct to the board privately.

### SSO
✔️⚠️ Partially Ready to Go 

#### Background
We use Discourse at list.hacman.org.uk for our forum but a lot of people don't have accounts and so don't engage on the forum. It would be great if all members had an account there by default with no need to register another password. 

SSO aims to bring this together with the aim of making it easier for people to use the forum, and easier to keep all user information together in one place.

- SSO
  - I've created a SSO provider at https://github.com/conorriches/sso which Discourse can send people to to login. This uses Cloud Functions.
  - It would be great if this could be under sso.hacman.org.uk 
- Membership System
  - All members already have an account on the membership system. 
  - On signing into the forum, if a member is new, the forum will create an account, and link the two together by their member ID in the membership system. This means changing email addresses won't create a new user when they login in the future.
  - (⚠️ Work In Progress) External users will be able to register an "online user" account which won't grant them physical access to the space or get storage etc. They won't be able to do anything in the membership system other than log into the forum.
    - If an online only user wants to become a member, there will be a process to enable this.
  - The membership system will have a few housekeeping updates so that the board/admins can easily help members out without being flooded with online users
  - Account harmonisaton
    - If someone has signed up to the forum in the past with x@y.com, but is in the membership system as x.y@gmail.com the forum will create them a new account as it can't link the two. 
    - There will be a mechanism where they can request merging of accounts which is trivial for a forum moderator to do.
    - I've suggested that Discourse implement a self-serve feature as it must be fairly common and can be automated. 