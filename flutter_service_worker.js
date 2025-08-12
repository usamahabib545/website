'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "1fea3fc7e651bc9493461fc532b04d99",
"version.json": "1ac57eb0214a8f5216f1da7dd479b33f",
"index.html": "1f06a1c9c784a5bf3df76588fa07e327",
"/": "1f06a1c9c784a5bf3df76588fa07e327",
"main.dart.js": "418b63028b1e3e038d751b927af0bb35",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "7a24ac1aa926f6da690b7c3a2daca425",
"icons/Icon-192.png": "af534d5c1bf65e8612118e18db8a1ea4",
"icons/Icon-512.png": "269f3bba2f4db461c2a03c8c9222ba77",
"manifest.json": "14533758d5adebb52c270151b0335f00",
"assets/AssetManifest.json": "6049f12d7378ce14c1d53cd23149fa23",
"assets/NOTICES": "a4918469ee31c310a0b6182c17cc1796",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "28959c82a77acdec18cac732e139a8d9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0617d2da101efd1fc3652979ff992d12",
"assets/fonts/MaterialIcons-Regular.otf": "597b565252e7a5528b5b066ae9a0fe61",
"assets/assets/images/united/main2.png": "f231b2f644bafe58505f0b37b6154ed0",
"assets/assets/images/united/main3.png": "c95374abacc0927b51b9daa14728b360",
"assets/assets/images/united/main1.png": "bbdfa543593c42da21b49d1604f28c65",
"assets/assets/images/united/main4.png": "25f7e24cf91682a8d64e30e80afe2f94",
"assets/assets/images/united/main5.png": "9b985518dae87d7b637c5da83562afce",
"assets/assets/images/united/main6.png": "6a668b07668be448feb7440dfd4af11a",
"assets/assets/images/icon.png": "e185b472cb45a48e4e2856e542fffdc6",
"assets/assets/images/iTribe/main2.png": "fa0238629a5be3dfd1876cb2c523bb70",
"assets/assets/images/iTribe/main3.png": "6c88213baf9738e1a510f954428bc8c8",
"assets/assets/images/iTribe/main1.png": "489a0359ea8a9a304c6adde034d34ce5",
"assets/assets/images/iTribe/main4.png": "4312f92d8e962be842c3331a2a242215",
"assets/assets/images/iTribe/main5.png": "3accb69090f9e62b00a51fe256881cf5",
"assets/assets/images/iTribe/main7.png": "ef05a020c5a321c9e7516a516c58fa7f",
"assets/assets/images/iTribe/main6.png": "40a64ae25a92741b21cd56a95985c135",
"assets/assets/images/iTribe/4.png": "413b1878730ab04495fa77fe12301f23",
"assets/assets/images/iTribe/2.png": "9cccb9a4ddfc1135ee4788a1f672a323",
"assets/assets/images/iTribe/3.png": "7965dc0883422499ec3fb39b5709fb6d",
"assets/assets/images/iTribe/1.png": "970ec03c1cd75e802933193813c8951c",
"assets/assets/images/sharkulator/main2.png": "12ed98f40ad50078ecb2a3c4bc1d1082",
"assets/assets/images/sharkulator/main3.png": "f9842ec09f84a72d0bd22f35affc2749",
"assets/assets/images/sharkulator/main1.png": "55ff36bb5c8f65a753562ed5a2549e94",
"assets/assets/images/sharkulator/main4.png": "72e835cf794d1a15d81d2895477b5a72",
"assets/assets/images/project1.png": "ca43a942faeba5d1f67ad2acf55e962b",
"assets/assets/images/mine.png": "89d65066f76e2886ecf71aab599b708e",
"assets/assets/images/handsOnHeal/main2.png": "478c569071ef4b1d3f68c464a842d2cd",
"assets/assets/images/handsOnHeal/main3.png": "6a52d1ded5cffb5852c0a82a978c0fe5",
"assets/assets/images/handsOnHeal/main1.png": "bb0fcd4198281e281eff6c96bb3e350f",
"assets/assets/images/handsOnHeal/main4.png": "902ef63a9658572d9ea5e48ed72a26f3",
"assets/assets/images/handsOnHeal/main5.png": "07469bc89d8607cd8ed166e632df2761",
"assets/assets/images/handsOnHeal/main6.png": "018a646105acb878212125cc6e2d2e09",
"assets/assets/images/handsOnHeal/4.png": "7d3221e547b1757e9116cadc431243d2",
"assets/assets/images/handsOnHeal/2.png": "4e150c9f4a9f041acc10ba5cdea0921d",
"assets/assets/images/handsOnHeal/3.png": "de73a54463b784faaf0e30f39c19ec47",
"assets/assets/images/handsOnHeal/1.png": "cf49923a376ee26cd10c53cad0a91e28",
"assets/assets/images/aruna/main2.png": "5af7a1282f29487884408d17ccbe6865",
"assets/assets/images/aruna/main3.png": "3c58b0b4d1ecd6d1c181f524245790b7",
"assets/assets/images/aruna/main1.png": "4caa216569255748114c2693217931ea",
"assets/assets/images/aruna/main4.png": "4e2dc16edffc99a91bffbcd7679cd56f",
"assets/assets/images/aruna/main5.png": "1432a814258a255527d88ad1c5ac163b",
"assets/assets/images/aruna/main6.png": "562aff9375544250723c5d88c6d8584f",
"assets/assets/images/aruna/4.png": "4d769b05f10d2b79893e46d0125bf92a",
"assets/assets/images/aruna/2.png": "4f019090a04700b000534c11ea5f637f",
"assets/assets/images/aruna/3.png": "bbd05983241905a3a53b703032ab28d7",
"assets/assets/images/aruna/1.png": "9c585bc3c72d173544d8116691b12de4",
"assets/assets/images/nursing/main2.png": "0c9fe3df366611d04b52cf05d9c26be0",
"assets/assets/images/nursing/main3.png": "1ab1bd8b00164f01184d2435388f17af",
"assets/assets/images/nursing/main1.png": "5cf5cbe430d1527fdbc575a53e4fdaf3",
"assets/assets/images/nursing/main4.png": "2abed2ece179bb9809a1c6cdec1bfae9",
"assets/assets/images/logo.png": "353e909059f670f483a66315656773c0",
"assets/assets/images/hr/main2.png": "a5feb5bfe98fdaf240974079e10f2601",
"assets/assets/images/hr/main3.png": "510115cb5efe53a93f4a5fef19cb8285",
"assets/assets/images/hr/main1.png": "48bbb782addf5f138e17f5d9a853023d",
"assets/assets/images/hr/main4.png": "f761fb52e101ff8b5f395035388a4979",
"assets/assets/images/hr/main5.png": "963a24ec23e5e5b0bcdc5f49576da2be",
"assets/assets/images/eta/main2.png": "b21c077f1b52ecf7b5c80e0278532dad",
"assets/assets/images/eta/main3.png": "49567148a228f1087a64a75928ac2072",
"assets/assets/images/eta/main1.png": "d9387a85f176aa3dec4e1e11f41bc083",
"assets/assets/images/eta/main4.png": "9f142b1a73307551a2f11a5d8850dcc7",
"assets/assets/images/eta/main5.png": "55db242454eb903ba51e859266be850b",
"assets/assets/images/eta/main6.png": "e83fe9f49053cb15d9dd23794194a2ef",
"assets/assets/images/eta/4.png": "bbb249d6b38dbf95803d68ea137ad72d",
"assets/assets/images/eta/2.png": "83445f80adcfb515ab8760d40a941e16",
"assets/assets/images/eta/3.png": "87bd9a9fdbbe5004388853a4bad84ecf",
"assets/assets/images/eta/1.png": "d38cddd1a6ec2552c246e26f727dfab7",
"assets/assets/images/bg.jpeg": "c6449162dc3940daa640a43101cfd66c",
"assets/assets/images/premiumreal/main2.png": "5b9a82843e8d8508263dd97ac4bdd2bd",
"assets/assets/images/premiumreal/main3.png": "960a4902ef750fb88e272482cbbfcf5a",
"assets/assets/images/premiumreal/main1.png": "7ba785eb9285cc46438d069ed36d2b77",
"assets/assets/images/premiumreal/main4.png": "ae0c9be5eacee0aa2a7d859e40d77897",
"assets/assets/images/premiumreal/main5.png": "6a132f9bf839aa79f51b52d18707e773",
"assets/assets/images/textToImage/main2.png": "217b1112b76663d69a771391b900bfa5",
"assets/assets/images/textToImage/main3.png": "9b9df12038a6a2466129aef791b87836",
"assets/assets/images/textToImage/main1.png": "939dd5c07a94bbc3a906cdd6b6d29fe3",
"assets/assets/images/textToImage/Frame%25201000002943.png": "dfd89e207307df4d0c026c7e5aa1500b",
"assets/assets/images/textToImage/main4.png": "2ef4f3b8326b8bedf6c2d4afad98a8f1",
"assets/assets/images/textToImage/main5.png": "df9f7dd52b97487a39fe936c17aab33c",
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
