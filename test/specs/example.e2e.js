describe('Hello World', () => {
    it('visit a url and assert the presence of text', async () => {
        await browser.url(`https://news.ycombinator.com/`)
        await expect($('.hnname')).toHaveTextContaining(
            'Hacker News')
    })
})

