import { test, expect } from '@playwright/test';

test.describe('Profile page', () => {
  test('authenticated user can view quiz progress and open account settings', async ({ page }) => {
    const user = {
      id: 7,
      name: 'Ada Lovelace',
      email: 'ada@example.com',
      createdAt: '2026-01-15 12:00:00',
    };

    await page.addInitScript(({ token, storedUser }) => {
      localStorage.setItem('dish.auth.token', token);
      localStorage.setItem('dish.auth.user', JSON.stringify(storedUser));
    }, { token: 'test-token', storedUser: user });

    await page.route('**/api/auth/me', async route => {
      if (route.request().method() === 'GET') {
        await route.fulfill({
          status: 200,
          contentType: 'application/json',
          body: JSON.stringify({ user }),
        });
        return;
      }

      await route.continue();
    });

    await page.route('http://localhost:5097/api/scores/me', async route => {
      await route.fulfill({
        status: 200,
        contentType: 'application/json',
        body: JSON.stringify({
          latest: {
            score: 8,
            max_score: 10,
            difficulty: 'medium',
            completed_at: '2026-09-20 18:30:00',
          },
          summary: {
            total_quizzes: 3,
            average_percent: 74,
            best_percent: 90,
          },
          results: [
            { id: 1, difficulty: 'medium', score: 8, max_score: 10 },
          ],
        }),
      });
    });

    await page.goto('/profile');

    await expect(page.getByRole('heading', { name: 'Ada Lovelace' })).toBeVisible();
    await expect(page.getByText('ada@example.com')).toBeVisible();
    await expect(page.getByRole('heading', { name: 'Din quizprogress' })).toBeVisible();
    await expect(page.getByText('8/10 poäng', { exact: true }).first()).toBeVisible();
    await expect(page.getByText('Avslutade quiz')).toBeVisible();

    await page.getByRole('link', { name: 'Öppna kontoinställningar' }).click();
    await expect(page).toHaveURL(/\/settings$/);
    await expect(page.getByRole('heading', { name: 'Kontoinställningar' })).toBeVisible();

    await page.getByRole('link', { name: 'Tillbaka till profil' }).click();
    await expect(page).toHaveURL(/\/profile$/);
    await expect(page.getByRole('heading', { name: 'Ada Lovelace' })).toBeVisible();
  });
});