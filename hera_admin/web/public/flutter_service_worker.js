'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "824c12cd26fcc3e1f8dd0525c3eb4e41",
"index.html": "ce25648a69d56b170eb9a1786d71ad79",
"/": "ce25648a69d56b170eb9a1786d71ad79",
"main.dart.js": "a3f9d327ebff1a1d6f04d8c91e7147c8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "537644b98efc601c7dd1fcb122ac9d96",
"firebase.json": "1eb618dc3a49dad14f631993f00d4563",
"assets/AssetManifest.json": "c8b8680b07663436784ca98e4f71c88d",
"assets/NOTICES": "c645e7e20a3a9606882f127d68cdf4c1",
"assets/FontManifest.json": "c9cb370877841911b3acc9864c246f27",
"assets/packages/flutter_vector_icons/fonts/Fontisto.ttf": "b49ae8ab2dbccb02c4d11caaacf09eab",
"assets/packages/flutter_vector_icons/fonts/Octicons.ttf": "8e7f807ef943bff1f6d3c2c6e0f3769e",
"assets/packages/flutter_vector_icons/fonts/Feather.ttf": "ca9ce9ff0676a9b04ef0f8a3ad17dd08",
"assets/packages/flutter_vector_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_vector_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_vector_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_vector_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_vector_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_vector_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_vector_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/flutter_vector_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_vector_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_vector_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/yt.png": "f96d29d886220b26bffffadeffa9932a",
"assets/assets/food_items/food4.jpg": "588a38c0d1a9440ff867a245563cc499",
"assets/assets/food_items/food5.jpg": "029ac98b2cbb01a6c79c7ff3b623bb3e",
"assets/assets/food_items/food7.jpg": "423ecf17ae627698a042c95b4f6c2922",
"assets/assets/food_items/food6.jpg": "ba24dd0834a03d49c8ee6f51e9d3f4a0",
"assets/assets/food_items/food2.jpg": "9c68ffabc24a47acbdf320c6456007c0",
"assets/assets/food_items/food3.jpg": "4cafd6cc14e8bfe3e8c6a7e90ad800ac",
"assets/assets/food_items/food1.jpg": "8a836abd34316c67215239e80db7b2e1",
"assets/assets/food_items/food8.jpg": "12c40530e92359d7f789ac0953e1ac4f",
"assets/assets/images/ic_login_google.png": "0f06463df63276b7fa6fcc54843eeb87",
"assets/assets/images/ic_login_apple.png": "b0bbeef159b0b434f4f5dc05b5735cef",
"assets/assets/images/ic_login_facebook.png": "899d4e244bcf30c3407e55aa99affa3a",
"assets/assets/images/mapl.png": "d4cbdb24ef5e20dc372fa89bb9feb907",
"assets/assets/images/ic_nonveg.png": "18e65cc49f2357e4cb5db72d3e398bbe",
"assets/assets/images/payment/payment_card.png": "7a6b7247b62ea76eb30aadfea7ffdde9",
"assets/assets/images/payment/payment_stripe.png": "ad6cc02abd5cc991aa8631c521d4d400",
"assets/assets/images/payment/payment_cod.png": "43b5db54dc43dac763faa2173bc6a095",
"assets/assets/images/payment/payment_paypal.png": "8bbeb8fcef8af6edeb4d03ff2dfde146",
"assets/assets/images/payment/payment_payu.png": "b1bc821f01c66414a1092afe440590de",
"assets/assets/images/map.png": "f7e5e3a8bc4d40f1e2802c38a800e0af",
"assets/assets/images/logo_restro.png": "1899f0dac395c8e8e11f7bc12b7c074a",
"assets/assets/images/footermenu/ic_orders.png": "578a41db9d1ef51f4a061fbe1f32fddd",
"assets/assets/images/footermenu/ic_homeact.png": "84feb75cb58f75a072b7eece80597525",
"assets/assets/images/footermenu/ic_home.png": "678c7e2f6eb5825021264b7c714b8bd7",
"assets/assets/images/footermenu/ic_profile.png": "d3fcc496f44a2bd6b4425fb31c2c8cbb",
"assets/assets/images/footermenu/ic_ordersact.png": "7a51d8dae8c1114c5b1b648264cbb080",
"assets/assets/images/footermenu/ic_itemact.png": "643165d92b2615667465c0e260c8e2c7",
"assets/assets/images/footermenu/ic_item.png": "c52e64b9b7c53d08cc67163e5d7f8d24",
"assets/assets/images/footermenu/ic_profileact.png": "65e16aa5911c793be16e23b8f1a9cfb2",
"assets/assets/images/graph.png": "ab53eccc2dc1e657cf51af290087f005",
"assets/assets/images/ic_veg.png": "a63adb025fbe77d804fb07c1bda3eb0d",
"assets/assets/images/Layer%25201.png": "273453ccd6398ecba5d6b268d552ccea",
"assets/assets/images/signin%2520hero%2520restro.png": "84e7cac433ed451f4b4b489e0cae8013",
"assets/assets/images/icons/ic_cart%2520wt.png": "5e391ac1579609b7760d426afa658b86",
"assets/assets/images/icons/ic_cart%2520blk.png": "75a97a7ccc470c8f2be05da7ddd8784c",
"assets/assets/images/icons/ic_mail.png": "8b905901a8a9e26de733c7adf2f9e396",
"assets/assets/images/icons/ic_phone.png": "c16d29d122610273e245cf1848798494",
"assets/assets/images/icons/ic_name.png": "ff422e4c186674db61f4157e71549025",
"assets/assets/images/icons/ic_search.png": "3f9d5b7795375f87015404120231a811",
"assets/assets/images/profile.jpg": "c765931f65490351f01654493ee28879",
"assets/assets/images/4.png": "e0c0c3fbedd16e4d4646eb216392f518",
"assets/assets/images/c.png": "60fcf608add9596da2f3381647e29153",
"assets/assets/images/5.png": "5a091d1b0b7c641c3d5ab61f5f4b1dd8",
"assets/assets/images/map_pin.png": "250bcafb834cc648fbaaa31267df0971",
"assets/assets/images/account/ic_menu_reviewact.png": "7eea801afd94aed27a6793eb6c207571",
"assets/assets/images/account/ic_menu_logoutact.png": "41385ddc5fb1ae35258e9a213fc3df15",
"assets/assets/images/account/ic_menu_supportact.png": "821ddba43dcbaed9c81585a23a8785a8",
"assets/assets/images/account/ic_menu_reviewsact.png": "f8f7fa4b9b419cd0d8e0302515fd39f5",
"assets/assets/images/account/ic_menu_tncact.png": "b4d0935f863968b21478f024d8b966e7",
"assets/assets/images/account/ic_menu_setting.png": "79713d6fb67754e5e331e23d408c757b",
"assets/assets/images/account/ic_menu_favorite.png": "815a45fc79bf04ab8bc2691c733fca4b",
"assets/assets/images/account/ic_menu_addressact.png": "b9d8650c6ab3a35d4d6d4634a885878c",
"assets/assets/images/account/ic_menu_insight.png": "c6d0bbfdf66dba0ee77a5d96b4b6860c",
"assets/assets/images/account/ic_menu_wallet.png": "17f98a883a031254c6dcdd885c51d6fd",
"assets/assets/images/chat_bg.png": "38e7a55682cb685f6cef960083c405da",
"assets/assets/images/2.png": "cdcde238501afacf16d06b2a5089b70f",
"assets/assets/images/map1.png": "944879796d6f74c700fc70a9a41878a4",
"assets/assets/images/3.png": "6ce24c5e10edebc78fd49a7d702d3048",
"assets/assets/images/lo.png": "6ed55876d15f1d4dffe30b2be8a5d651",
"assets/assets/ic_nonveg.png": "18e65cc49f2357e4cb5db72d3e398bbe",
"assets/assets/order%2520confirmed.png": "9c4b5e713e3e835a0a4d00d7ecefa906",
"assets/assets/ic_veg.png": "a63adb025fbe77d804fb07c1bda3eb0d",
"assets/assets/icon_orders.png": "f0f7dfedaf70ca3bb5851b3244268ea0",
"assets/assets/appicon.png": "98226a1bc17926dd1191688202174857",
"assets/assets/icon_cooktime.png": "7854bc1795ed4726d3e7173415368dc5",
"assets/assets/ItemCategory/cat_dessert.png": "6b2876d1a356e919845dcd6f295b6c81",
"assets/assets/ItemCategory/cat_chinese.png": "0ffeee35e043e6a3993a4be1be761935",
"assets/assets/ItemCategory/cat_fastfood.png": "d1a91c8b05e41d97fe7de029fbd5deb2",
"assets/assets/ItemCategory/cat_seafood.png": "a1f5f41f37cdfec0b88b53e0ae5d07ec",
"assets/assets/fonts/ProductSans-Bold.ttf": "a19a7b108b2e3961fc855c6ea5a6546f",
"assets/assets/fonts/ProductSans-Regular.ttf": "b61c0ab33a818a0162f3e868babcef4b",
"assets/assets/image.png": "7c08f91fed061af054e4b19e4af4fd58"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
  for (var resourceKey in Object.keys(RESOURCES)) {
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
