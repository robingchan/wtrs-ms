import Vue from 'vue';
import Vuetify, { VApp, VContent } from 'vuetify/lib';

Vue.use(Vuetify, {
  components: {
    VApp,
    VContent
  }
});

export default new Vuetify({
  icons: {
    iconfont: 'mdi',
  },
});
