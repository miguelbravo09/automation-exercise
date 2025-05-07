module.exports = {
    testDir: './tests',
    timeout: 30000,
    use: {
      headless: true,
      viewport: { width: 1280, height: 720 },
    },
    reporter: [['html', { outputFolder: 'playwright-report' }]],
  };