// Simulates the ZAFClient functionality for local testing


class ZAFTestClient {

  static init() { return new this(); }

  invoke(_type, _params){}

  metadata(){
    return new Promise((resolve, reject) => {
      resolve({
        settings: {
          item_list: JSON.stringify(["One", "Two", "Three", "Four"])
        }
      });
    });
  }

}


export default ZAFTestClient;
