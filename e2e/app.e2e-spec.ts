import { DevelopmentPage } from './app.po';

describe('development App', function() {
  let page: DevelopmentPage;

  beforeEach(() => {
    page = new DevelopmentPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
