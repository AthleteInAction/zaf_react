let client;

if (process.env.NODE_ENV === 'production') {
  client = ZAFClient.init(); // eslint-disable-line no-undef
} else {
  client = require('./helpers/zaf_test_client').default.init();
}

client.invoke('resize', { width: '340px', height: '400px' });

export default client;
