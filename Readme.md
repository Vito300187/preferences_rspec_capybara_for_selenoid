File with minimal preferences, for run Capybara, Rspec and Selenoid

### Install Selenoid
- `wget -O cm https://github.com/aerokube/cm/releases/download/` And current version
- `chmod +x cm`
- `./cm selenoid start --vnc`
- `./cm selenoid-ui start`

If you scope browser, haven't new version, need update selenoid:
- ` ./cm selenoid update`

1) For demo version need, `ruby 2.7.0` and run command `bundle`  
2) Run `rspec spec_test.rb`
2) After run visit in browser `localhost:8080`
3) Session created and test runner, can view how the test is performed.
4) If you want using selenoid video record, you need set preferences `enableVideo = true` in `spec_helper.rb`, after finish test, move to `http://localhost:4444/video/` -> Listing All Video Files  
