# LINK DUMP

### Packages for Sublime
* themes - https://github.com/daylerees/colour-schemes
* css color syntax and completion - https://github.com/nathos/sass-textmate-bundle
* sweet completion, lorem ipsum, etc. - https://github.com/sergeche/emmet-sublime  
  watch a emmet demo here - http://emmet.io/
* http://hiltmon.com/blog/2012/08/14/my-sublime-text-2-setup/

### Cool Ruby Stuff
* http://rubular.com/

### General Stuff
* http://weblog.jamisbuck.org/2008/11/9/legos-play-doh-and-programming
* https://github.com/mislav/fakeweb
* http://blog.carbonfive.com/2012/03/18/how-to-test-external-apis/
* https://github.com/bblimke/webmock
* http://effectif.com/ruby/manor/faking-http-requests-during-testing
* http://www.rubydoc.info/github/bblimke/webmock/master/WebMock/API
* http://stackoverflow.com/questions/2194547/ruby-how-to-write-a-gem
* Wikibook - http://en.wikibooks.org/wiki/Ruby_Programming
* Bastards book of Ruby - http://ruby.bastardsbook.com/

### Media Queries
* http://www.1stwebdesigner.com/css/how-to-use-css3-orientation-media-queries/
* http://coding.smashingmagazine.com/2012/08/20/towards-retina-web/

### CDN Stuff: Heroku + S3 + Padrino
* https://devcenter.heroku.com/articles/s3
* https://devcenter.heroku.com/articles/uploading-files-s3-rails-paperclip
* https://devcenter.heroku.com/articles/cdn-asset-host-rails31
* http://stackoverflow.com/questions/7324307/rails-3-1-static-asset-must-assets-by-precompiled-for-productions
* https://github.com/rumblelabs/asset_sync (compatible with any rack app)
* http://jackchu.com/blog/2011/09/20/rails-asset-pipeline-content-delivery-networks-and-rack-cache/
* http://blog.firmhouse.com/the-first-of-three-easy-things-we-did-to-make-our-blog-engine-super-fast
* http://blog.firmhouse.com/complete-guide-to-serving-your-rails-assets-over-s3-with-asset_sync

### Padrino / Rails Stuff
* ENV configure - https://groups.google.com/forum/?fromgroups=#!topic/padrino/RfJoidUH4_0
* http://ruby-i18n.org/wiki
* https://github.com/grosser/fast_gettext
* https://github.com/raul/translate_routes
* http://stackoverflow.com/questions/2461432/lazy-evaluation-in-ruby
* Load Path - https://github.com/padrino/padrino-framework/issues/731

### View Model Templating with Liquid
* Liquid Template EX - http://stackoverflow.com/questions/1283083/how-can-you-render-a-template-within-a-layout-using-liquid-template-language
* Presenter example - http://www.broadcastingadam.com/2011/06/present_yourself/
* http://etagwerker.wordpress.com/tag/liquid-templates/
* http://rubysource.com/ditching-erb-a-guide-to-using-liquid/
* Grab method caller - http://grosser.it/2009/07/01/getting-the-caller-method-in-ruby/

### JS routing & namespacing
* http://docs.jquery.com/Plugins/Authoring
* http://backbonetutorials.com/what-is-a-router/
* http://addyosmani.com/blog/essential-js-namespacing/
* http://api.jquery.com/jQuery.extend/
* http://viget.com/inspire/extending-paul-irishs-comprehensive-dom-ready-execution
* http://paulirish.com/2009/markup-based-unobtrusive-comprehensive-dom-ready-execution/

### Unit Testing with Jasmine + Jenkins
* http://www.zendesk.com/blog/javascript-loves-ci
* http://bugsnpieces.blogspot.com/2011/10/headless-jasmine-testing-with.html
* Jenkins+Jasmine+JSHint+PhantomJS: http://www.zendesk.com/blog/javascript-loves-ci
* Jenkins build per IGT branch: http://entagen.github.com/jenkins-build-per-branch/
* Jenkins' WIKI: https://wiki.jenkins-ci.org/display/JENKINS/Home
* Jenkins (hudson) installation guide on Debian : http://gogs.info/wiki/debian/hudson
* JS unit testing: http://skaug.no/ingvald/2010/10/javascript_unit_testing/
* Jenkins + JSTestDriver: http://cjohansen.no/en/javascript/javascript_continuous_integration_with_hudson_and_jstestdriver
* Headless WebKit: http://phantomjs.org/
* Headless browser: http://www.envjs.com/

### FB Graph Test User creation
* https://gist.github.com/752974

### Heroku + Postgres + ETC
**Basic setup:**
* http://guides.rubyonrails.org/getting_started.html
* https://devcenter.heroku.com/articles/rails3
* heroku does not require production settings in database.yml, it compiles them into the slug automatically

**Postgres:**
* https://devcenter.heroku.com/articles/heroku-postgres-documentation
* https://devcenter.heroku.com/articles/heroku-postgresql

**Multiple Environments:**
* https://devcenter.heroku.com/articles/multiple-environments

**OSX Postgres Setup:**
* http://blog.willj.net/2011/05/31/setting-up-postgresql-for-ruby-on-rails-development-on-os-x/
* http://www.youtube.com/watch?v=pf5jPUJAeU4 (video based on blog post)
* http://mxcl.github.com/homebrew/ (homebrew)
* Lunchy: nice way to manage starting stuff  
    http://thechangelog.com/post/4164540515/lunchy-a-friendly-wrapper-for-launchctl

```
$lunchy start postgres
$lunchy stop postgres
```

**Git workflow setup for shared hosting:**
* http://joemaller.com/990/a-web-focused-git-workflow/

**Heroku Procfile:**
* https://devcenter.heroku.com/articles/procfile/

* basic Rails procfile setup

```ruby
    web: bundle exec rails server thin -p $PORT
```

**Foreman:**
* Zombie server: http://stackoverflow.com/questions/9605430/thin-web-server-start-tcp-server-no-acceptor-runtimeerror-after-git-branch

**RSpec and Cucumber**
*  http://railscasts.com/episodes?utf8=%E2%9C%93&search=rspec
*  https://github.com/rspec/rspec-rails


###VIM
* http://zerokspot.com/weblog/2008/08/03/macvim-as-textmate-replacement/
* http://vim.runpaint.org/navigation/splitting-screen/
* http://www.fprintf.net/vimCheatSheet.html
* http://www.worldtimzone.com/res/vi.html

###Vagrant / Virtual Box
* http://blog.csanchez.org/2012/05/03/automatically-download-and-install-virtualbox-guest-additions-in-vagrant/