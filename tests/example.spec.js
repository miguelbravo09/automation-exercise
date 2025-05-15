const { test, expect } = require('@playwright/test');

test('Navigating to homepage', async ({ page }) => {
  await page.goto('https://practicetestautomation.com/');
});

test('Login in', async ({ page }) => {
  await page.goto('https://practicetestautomation.com/practice-test-login/');
  
  
  await page.locator('#username').fill('student');
  await page.locator('#password').fill('Password123');

  await page.locator('#submit').click();

  await page.waitForSelector('.post-title');

  const title = await page.locator('.post-title').innerText();
  expect(title).toBe('Logged In Successfully');
});