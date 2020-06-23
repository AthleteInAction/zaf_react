# ZAFReact

React for Zendesk App Framework V2.0

## Requirements

NPM: Direct from [NPM](https://www.npmjs.com/get-npm) or install with [Homebrew](https://brew.sh)

    $ brew install node

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zaf_react'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zaf_react

## Usage

###### Initialize a new ZAF React App

    $ zafr init

This will generate a very basic React app with an example component "src/components/item-list/item-list.js".

---

###### Start the React server for local testing

    $ zafr start

This will run the React server on [localhost:3000](http://localhost:3000).

---

###### Compile a production build for React

    $ zafr build

This will compile the React app into a production ready build. This will not run if uploaded to Zendesk. See below.

---

###### Start the ZAT Server

    $ zafr server

This will run the previous ```zafr build``` command, then start the ZAT Server for local testing in Zendesk. See Zendesk's docs here for using the ZAT server [here](https://developer.zendesk.com/apps/docs/developer-guide/zat#server).

---

###### Validation

    $ zafr validate

This will run the ```zat validate``` command in the ```/build``` directory to validate the ZAF V2.0 App.

---

###### Package the full app for uploading to Zendesk

    $ zafr package

This will run the above ```zafr build``` command, then flatten the React assets directory structure, and finally compile the entire app into a ZAF V2.0 app ready for upload to Zendesk. The uploadable .zip file can be found at ```/build/tmp/app-{timstamp}.zip```.

---

## ZAFClient

Zendesk's ZAFClient is not available outside of Zendesk. In order to allow local testing, without any need for Zendesk, use the file ```/source/src/zendesk/helpers/zaf_test_client.js```. There you can build methods to simulate the ZAFClient functionality away from the Zendesk environment. The ZAF Test Client will not be used when uploaded to Zendesk or when using the ZAT Server.

## Notes

During the ```zafr package``` command, all React style and js assets will be flattened and moved from ```/build/assets/static/*``` to ```/build/assets/*``` as ZAF V2.0 does not allow a nested file structure.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/zaf_react.
