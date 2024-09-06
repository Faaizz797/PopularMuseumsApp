'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "286600c390cd5447e293aa3e9586b5ee",
"version.json": "ae530bd0c44b845d7a166d1495240ac6",
"index.html": "62df9d332d598fb21230a0e109c80c10",
"/": "62df9d332d598fb21230a0e109c80c10",
"main.dart.js": "c7a92d252e21bb10c74ac559d062ab57",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "705a6c6e44a0ab61ef7acf8e7b9b772e",
"app_logo.png": "fb6c6248e7338e33ffc9e4308cf753ce",
"assets/AssetManifest.json": "d3da3cbeaeeedf320945aecbea1a027b",
"assets/NOTICES": "9b86fe84f93ae79bbc38d11cfacbfe9e",
"assets/FontManifest.json": "ef042e313fc5a9a1afe462b6c5c35b25",
"assets/AssetManifest.bin.json": "d5e3cbc4d4d840929ea2471aed7ecb64",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0bf15b8937a0ffcf67fdfc21b34551c3",
"assets/fonts/OldLondon/OldLondon.ttf": "c8c687cbf9cb8e31684d6bc0317c9380",
"assets/fonts/Staatliches/Staatliches-Regular.ttf": "0b1946eaefaeda766701618dba33e03c",
"assets/fonts/MaterialIcons-Regular.otf": "21a145daa19fa3af501d603ad4cbb55c",
"assets/fonts/MileaDilan/mileadilan.otf": "c039f5f5edab0a05da1e751f1afb89b1",
"assets/assets/images/IMG_7.jpeg": "cf4495a4eca368b43216f1b8234a71b2",
"assets/assets/images/IMG_6.jpeg": "4859cf8023e3c92ec79a02b91da4c4fc",
"assets/assets/images/louvre_museum.jpg": "5b6d30fcea9328d5fcf308c08c0d4de9",
"assets/assets/images/mockup.png": "12ad8535105f3cc339c8674760d64797",
"assets/assets/images/hermitage_museum.jpg": "e136c2b62d139d448b6144783add1dfb",
"assets/assets/images/IMG_1.jpeg": "c06ea37897812b7abf37f18522bec5ca",
"assets/assets/images/reina_sofia_museum.jpg": "13b4669889a63ed999c3b234af06da10",
"assets/assets/images/marquis.jpg": "7e84363e4845a854cac2088605b01e4b",
"assets/assets/images/IMG_10.jpeg": "3ed413da3bed33b2b1ad193c052e401a",
"assets/assets/images/IMG_11.jpeg": "d2eba803f9736e3d0ba516ac0a81ac42",
"assets/assets/images/acropolis_museum.jpg": "5b46001cbeed66ad50371f19b4ef92a1",
"assets/assets/images/smithsonian_museum.jpg": "ad9b2ea5b1ca5d3ff2f345e9441d55dc",
"assets/assets/images/ranca-upas.jpg": "18ec585026e0af3f21db6bb7aaccf2ce",
"assets/assets/images/state_historical_museum.jpg": "0231d7df56e6262cb88f6f907b16787c",
"assets/assets/images/IMG_3.jpeg": "423c419105524bf93d34f45f23313d4e",
"assets/assets/images/prado_museum.jpg": "42dcea93e775891276068dd5377ee73b",
"assets/assets/images/kawah-putih.jpg": "a2371babfc2a47b7f07cd21c70c4d7c1",
"assets/assets/images/british_museum.jpg": "c464d74276605657342dbb886d1f8784",
"assets/assets/images/bosscha.jpg": "256600646651e638361646aa2b1b8388",
"assets/assets/images/museum-geologi.jpg": "feed43fb551fad21fd0b4f40e061c6d3",
"assets/assets/images/IMG_2.jpeg": "c0c3ce46459b3822cf51b9fbc9650a50",
"assets/assets/images/app_logo.png": "fb6c6248e7338e33ffc9e4308cf753ce",
"assets/assets/images/IMG_9.jpeg": "b1340faef85a2598748fae93f5e52b8f",
"assets/assets/images/taman-film.jpg": "3c440fc167e79c459af92e62c9b3b400",
"assets/assets/images/farm-house.jpg": "3190d0f8d8ad8a5bd96a2e206fb96d06",
"assets/assets/images/floating-market.png": "3825da6a681989426fa55d7493abcf62",
"assets/assets/images/IMG_5.jpeg": "2e7059be6e58e9d61dd89dde0efd5a0e",
"assets/assets/images/rijks_museum.jpg": "287061d1932cf523b44343d36f3bc110",
"assets/assets/images/IMG_4.jpeg": "41406c1941ff45a9ed9783a290a3366d",
"assets/assets/images/metropolitan_museum.jpg": "d6c0c1394806ba3c4ce273577c2ee283",
"assets/assets/images/stone-garden.jpg": "baece3780756a2cb8b58e3531201f6e3",
"assets/assets/images/uffizi_gallery.jpg": "873dbc7e439ea0aec78fc5ab64e462a9",
"assets/assets/images/jalan-asia-afrika.jpg": "bec6a2d8b740356d2dfbb1de0fdc3729",
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
