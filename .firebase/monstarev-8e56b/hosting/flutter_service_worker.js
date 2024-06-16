'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "445580a7545472b81810391c3d124141",
"version.json": "f35c604add72d7034c26d060b62209b5",
"index.html": "1cde9309e7441beb857f0d61921a6e8e",
"/": "1cde9309e7441beb857f0d61921a6e8e",
"main.dart.js": "ac21fa40a0378f749f1910dff7a8fc67",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"logo.png": "04dc6755c578d224b44a6c9b8b84e53c",
"icons/android-chrome-192x192.png": "04dc6755c578d224b44a6c9b8b84e53c",
"icons/apple-touch-icon.png": "68b119dd9eb53f9d54ee9a5d432669e8",
"icons/android-chrome-512x512.png": "f0fffa2109ce8523d4c990d0643a3221",
"manifest.json": "f3d7ec1ff329b84c417055858fbfe60b",
"assets/AssetManifest.json": "e080f69bd8a8eb201f6b4f25cb302778",
"assets/NOTICES": "2a5086e542b53d84769167d2a8b4adbb",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "1c8a82c7222e762dceded1d1a1299f2b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "f602594bbe733e7d80e6e949cb286ed0",
"assets/fonts/MaterialIcons-Regular.otf": "9c71db995d99b4ac0f1e38a97edeaf48",
"assets/assets/images/Figma.svg": "501eb335271f4907fd99976f34b5114e",
"assets/assets/images/pic_1.webp": "d9b3b899f192944f2eb88ac074ae199a",
"assets/assets/images/GitHub(3).svg": "0679f542fd56a0f66e977d59d86e2986",
"assets/assets/images/logo_main%2520(1).webp": "e7b181f24abdc33ed4f15586a0bc5e8f",
"assets/assets/images/GitHub(2).svg": "d68bce584620ed6c510dc04af7e9c013",
"assets/assets/images/GitHub.svg": "7b979924d95b5bf1c4d2a1224a504955",
"assets/assets/images/Facebook%2520Circled.svg": "35c8f5ec719309b08e650f06f6ab2caf",
"assets/assets/images/Apple%2520Logo.svg": "9999f614da0150bb02eaae3d2e2a63f3",
"assets/assets/images/shape2.svg": "a4290f89f2296f1d59c8778acda2a402",
"assets/assets/images/TwitterX.svg": "45d3de81da4ae92b8a8096e745ba9308",
"assets/assets/images/asset%2520(1).svg": "a4290f89f2296f1d59c8778acda2a402",
"assets/assets/images/shape1.svg": "c46a1b580267c1f37ad6eb20a26eba92",
"assets/assets/images/android-chrome-512x512.png": "f0fffa2109ce8523d4c990d0643a3221",
"assets/assets/images/Google.svg": "830542e1c3a1ec9a63bf604cea10c719",
"assets/assets/images/logo_monstarev.webp": "14712ea0ffc08a7401d263c5f1182d5f",
"assets/assets/images/Apple%2520Logo(2).svg": "5c79d8ea6bcd6158c25860da696ab749",
"assets/assets/images/profile_picture.webp": "a13fd08788ad9446f6c9af119ee67c73",
"assets/assets/images/TwitterX(2).svg": "73cf60c83fa945e9e661a718c04d54a8",
"assets/assets/images/Discord.svg": "370f80b0eabdba3f521c364f0ad45f24",
"assets/assets/images/shape2%2520(1).webp": "d82147d65f014ba737536d20527d970a",
"assets/assets/images/logo_main.webp": "14712ea0ffc08a7401d263c5f1182d5f",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
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
