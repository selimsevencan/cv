# Source of Eralp Karaduman's CV

**[eralpkaraduman.github.io/cv](https://eralpkaraduman.github.io/cv)**  
**[auto-generated PDF version](https://github.com/eralpkaraduman/cv/releases/latest)**

[![Build Status](https://travis-ci.org/eralpkaraduman/cv.svg?branch=gh-pages)](https://travis-ci.org/eralpkaraduman/cv)

**If you want to have your own, just fork this repo and modify the `index.md`.**

This is a fairly modified version of
[elipapa's markdown-cv](http://elipapa.github.io/markdown-cv) project.  
Which is using [jekyll](https://jekyllrb.com) to host the cv as static site on github.

My version simply uses
[sindresorhus's github-markdown-css](https://github.com/sindresorhus/github-markdown-css) the close
replica of github's markdown style. 


## Automatic PDF version generation

Also if you set up Travis CI, i configured it up so after every commit, travis will print it to `cv.pdf` then create a release on github. You can always link to the latest release by adding the sufffix `/releases/latest` to repo url.  
For example;  
github.com/your-username-here/cv[/releases/latest](https://github.com/eralpkaraduman/cv/releases/latest)

To enable this;  
- Go to [github.com/settings/tokens](https://github.com/settings/tokens)
- Generate a personal access token, give it `public_repo` permission
- Go toto travis-ci.org settings page of you repo
- Enter the token as Environment Variable with the key `GITHUB_OAUTH_TOKEN`
- If everything was right, it will create a release under `/releases` page of your github repo
- Latest release is conveniently always at `/releases/latest`

## Including downlad link to PDF version in the website

I added a feature which automatically adds the latest PDF version download link to the website.   
This only works when automatic PDF version generation was set up (mentioned above).   
This is done by javascript running on the page, it tries to fetch github's API to get the last release.  
This link won't be generated in the PDF itself for several reasons;  
- Lack of necessity, since you have the pdf there's need to download it again.
- I didn't want to deal with all the troubles coming with executing javascript in pdf generation context
- Travis CI blocks the request to github API i guess?
- I disabled javascript for wkhtmltopdf, see 2 reasons above.


## Running jekyll locally

*(You don't need to run it locally to update this, do it on github's web ui)*    

Since after your every change a new cv will be generated, this may cause excessive number of generations. To avoid this you may choose to make several commits on your local environment. Then push them all at once. To be able to preview the CV you should run Jekyll locally.

You should look at [jekyll's own documentation](https://jekyllrb.com/docs) but,
this is how you'd get started;  

`bundle install`  
`bundle exec jekyll serve --host=0.0.0.0`

