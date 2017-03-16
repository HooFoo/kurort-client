<template lang="pug">
.flex.layout-column
  #map
    gmap-map( ':center'="center" ':zoom'="7")
</template>

<script>
    import * as VueGoogleMaps from 'vue2-google-maps';
    import Vue from 'vue';

    Vue.use(VueGoogleMaps, {
        load: {
          key: 'YOUR_API_TOKEN',
          v: 'OPTIONAL VERSION NUMBER',
          // libraries: 'places', //// If you need to use place input
        }
    });
    export default {
        name: 'g-map',
        data() {
            return {
                center: { lat: 55.75370903771494, lng: 37.61981338262558 },
                zoom: 13
            }
        }
    }
</script>
