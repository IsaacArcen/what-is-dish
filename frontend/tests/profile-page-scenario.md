# Profile Page Scenario

## Scenario: Authenticated user views quiz progress and opens account settings

### Given
- The user is authenticated.
- The user is named `Ada Lovelace`.
- The user's email is `ada@example.com`.
- The profile API returns quiz progress with a latest score of `8/10`.

### When
1. The user navigates to `/profile`.
2. The user verifies the profile name, email, and quiz progress.
3. The user selects `Öppna kontoinställningar`.
4. The user selects `Tillbaka till profil`.

### Then
- The profile page displays `Ada Lovelace`.
- The profile page displays `ada@example.com`.
- The profile page displays the `Din quizprogress` section.
- The profile page displays the latest score `8/10 poäng`.
- The user is navigated to `/settings`.
- The account settings page is displayed.
- The user is navigated back to `/profile`.
- The profile heading is displayed again.

## Automated test

The automated Playwright implementation is in `profile.spec.js`.
Run it from the `frontend` directory with:

```text
npm.cmd run test:e2e
```
