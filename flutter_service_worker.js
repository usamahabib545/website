'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "670d887ee9937d5241968913dfe35bee",
"version.json": "1ac57eb0214a8f5216f1da7dd479b33f",
"index.html": "04efe3ef188bda13ea07fccf009fce8a",
"/": "04efe3ef188bda13ea07fccf009fce8a",
"main.dart.js": "b3a3e1f2dbd58b8e7f3ce4341eff350b",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "14533758d5adebb52c270151b0335f00",
"assets/AssetManifest.json": "8d799808e2c1fd00ef95c6357a9c126d",
"assets/NOTICES": "a4918469ee31c310a0b6182c17cc1796",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "411de34458822641cc232d16bf5726da",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "95245dfe67a91d24e5477e136a93f740",
"assets/fonts/MaterialIcons-Regular.otf": "597b565252e7a5528b5b066ae9a0fe61",
"assets/assets/images/united/main2.png": "ab5706135bd99238a931845fa4ec36c0",
"assets/assets/images/united/main3.png": "6beb8a3780d35416ed365fc5901de865",
"assets/assets/images/united/main1.png": "72f145a0f3e78896ae038b2fe6814c7b",
"assets/assets/images/united/main4.png": "0d33c46d1c2b2f86b1a7a399fed97cf2",
"assets/assets/images/united/main5.png": "03d72cccbbb75683e4d39b8d45dbe2fd",
"assets/assets/images/united/main6.png": "830aadf2957032bc1c35511dd725a6b8",
"assets/assets/images/sharkulator/main2.png": "83ed5ad71577379a22c0e54797aac573",
"assets/assets/images/sharkulator/main3.png": "e343865dbcde810896fea3d707b36ace",
"assets/assets/images/sharkulator/main1.png": "feb5f86e1bcf904e66f9e541af35c7e6",
"assets/assets/images/sharkulator/main4.png": "c879c33f7b1ef30c87b6421bafd97bad",
"assets/assets/images/project1.png": "ca43a942faeba5d1f67ad2acf55e962b",
"assets/assets/images/mine.png": "89d65066f76e2886ecf71aab599b708e",
"assets/assets/images/handsOnHeal/main2.png": "c9fcafebb70f595a617c5712a31b61c0",
"assets/assets/images/handsOnHeal/main3.png": "f4e7deb3917e2a8974e77708519f8d47",
"assets/assets/images/handsOnHeal/main1.png": "f7899e0b20aa5378dd7098446bd7c29c",
"assets/assets/images/handsOnHeal/main4.png": "6e6d887a163d9c1f0c5960fe01156741",
"assets/assets/images/handsOnHeal/main5.png": "5ddcaabf5e9cb13cffd0df4451c92626",
"assets/assets/images/handsOnHeal/main6.png": "c6d4b7f641d4f613f4412d677f9303e5",
"assets/assets/images/handsOnHeal/4.png": "6e6802b8dd8e0299a3e64504fbc01fa5",
"assets/assets/images/handsOnHeal/5.png": "371fa8e35d7369108c16eeffb67379e5",
"assets/assets/images/handsOnHeal/2.png": "d5dfcb0fee2e4307633d4865ee784f4d",
"assets/assets/images/handsOnHeal/3.png": "aa5c0b58295c12b02f52c917b328fcf2",
"assets/assets/images/handsOnHeal/1.png": "fa76b33839bd040cf147d61aec6f5fdc",
"assets/assets/images/aruna/main2.png": "e8fd9172b4db2fe8f0e44e898e1a6c37",
"assets/assets/images/aruna/main3.png": "c64f3b6a7658f28f1c624902c9e3505f",
"assets/assets/images/aruna/main1.png": "9f8adbc39983387e10de79d1c258d3fc",
"assets/assets/images/aruna/main4.png": "87949bf44a65c220fcc27286989c3b9f",
"assets/assets/images/aruna/main5.png": "6c743db74664271296ea654bcfc910e7",
"assets/assets/images/aruna/main6.png": "8465261abcda4cc97fd027396fb4ae37",
"assets/assets/images/aruna/4.png": "0291de921861dc86497053a40a1dadcc",
"assets/assets/images/aruna/2.png": "2bf27d7cad3b9396f3def839d8990adc",
"assets/assets/images/aruna/3.png": "431a64644a1ec8574f8c588b3c1106a9",
"assets/assets/images/aruna/1.png": "f85f3d95172d3143d573b9b5879f11b9",
"assets/assets/images/nursing/main2.png": "02f704bcf11187f93f5c3a9d5824a70c",
"assets/assets/images/nursing/main3.png": "231585207bc1ba10bf69f0fc5810ce90",
"assets/assets/images/nursing/main1.png": "b59b156af70a796ef27460c0ad50d776",
"assets/assets/images/nursing/main4.png": "b315c9c3bd8850231e96fc15de8cf420",
"assets/assets/images/hr/main2.png": "9237907488b3e9bc962613ffff6cf02d",
"assets/assets/images/hr/main3.png": "0b83ed080ca2c68deef96999ef72acb2",
"assets/assets/images/hr/main1.png": "d0a2e8f089b1668dd5dcd8812ec7fff5",
"assets/assets/images/hr/main4.png": "712c485a7c40952ff7964fa80b8e3878",
"assets/assets/images/hr/main5.png": "ae5aae7381a3d40a975277576c5ff0d8",
"assets/assets/images/eta/main2.png": "f9c7760b57de0ffd1f3c7085fac7e1e2",
"assets/assets/images/eta/main3.png": "b0273cf17bcfeefba87a559207e2a260",
"assets/assets/images/eta/main1.png": "1479a1a5e2a8b152905a96f519c1ba45",
"assets/assets/images/eta/main4.png": "be384c35556f6457891f05ea0ec0dbcf",
"assets/assets/images/eta/main5.png": "a8cc032b71bbc31875f172f314408fae",
"assets/assets/images/eta/main6.png": "980f675ed7cd1c411e6a8e7a3b16b11e",
"assets/assets/images/eta/4.png": "028b175e7e3ead7809ca53672ebbb272",
"assets/assets/images/eta/2.png": "71a111324f07a20db032455331389ab9",
"assets/assets/images/eta/3.png": "b86a41469f9c73181be155cd33bd2b73",
"assets/assets/images/eta/1.png": "869a36d0dddb4e8092898f7f5581d61b",
"assets/assets/images/bg.jpeg": "c6449162dc3940daa640a43101cfd66c",
"assets/assets/images/premiumreal/main2.png": "a7f4db5554ef81c697f05c2b3f6b6017",
"assets/assets/images/premiumreal/main3.png": "f844bb467ba09eae2c2fcdc796be09d4",
"assets/assets/images/premiumreal/main1.png": "5551dbc3b9da092e97333d3228000ce9",
"assets/assets/images/premiumreal/main4.png": "2970953638103285080a03bad18294e8",
"assets/assets/images/premiumreal/main5.png": "8cdb08fff794891980e051c6de5a4e0c",
"assets/assets/images/textToImage/main2.png": "d18b80137f7fcd6888fbed180d65d52e",
"assets/assets/images/textToImage/main3.png": "a8b0bfbab3c26e0d5cb9283af863544a",
"assets/assets/images/textToImage/main1.png": "aff2d53b4793e549cec2eeced0100cbc",
"assets/assets/images/textToImage/main4.png": "0d31103e11e2350c2992897158eac607",
"assets/assets/images/textToImage/main5.png": "b31ecf7be2fc4913990805f4106851af",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/cv/my_cv.pdf": "90f62ef11f51097f5dfdc4f8c8634c7b",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
