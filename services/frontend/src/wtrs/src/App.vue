<template>
  <v-app>  
    <v-system-bar
          app
          color="orange"
          :height="height"
          :lights-out="lightsOut"
          :window="window"
        >
          <v-icon>mdi-gmail</v-icon>
          <span>3 technicians online</span>
          <div class="flex-grow-1"></div>
          <v-icon>mdi-wifi-strength-4</v-icon>
          <v-icon>mdi-signal-cellular-outline</v-icon>
          <v-icon>mdi-battery</v-icon>
          <span>10 new tickets</span>
        </v-system-bar>
    <v-app-bar app>
      <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
      <v-toolbar-title>{{$t('message')}}</v-toolbar-title>
      
    </v-app-bar>
    
    <v-navigation-drawer
      v-model="drawer"
      expand-on-hover
      temporary
      app
    >
      <v-list-item>
        <v-list-item-avatar>
          <!--<v-img src="https://randomuser.me/api/portraits/men/78.jpg"></v-img>-->
        </v-list-item-avatar>

        <v-list-item-content>
          <v-list-item-title>Robin Chan</v-list-item-title>
          <v-list-item-subtitle>
            test subtext
          </v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>

      <v-divider></v-divider>

      <v-list>
        <v-list-item
          v-for="item in items"
          :key="item.title"
          link
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>

      <template v-slot:append>
        <div class="pa-2">
          <v-btn block color="error">Logout</v-btn>
        </div>
      </template>
    </v-navigation-drawer>



    <!-- Sizes your content based upon application components -->
    <v-content>

      <!-- Provides the application the proper gutter -->
      <v-container fluid>

        <!-- If using vue-router -->
        <router-view></router-view>
      </v-container>
    </v-content>

    <v-footer app>
      wtrs
    </v-footer>
  </v-app>
</template>

<style lang="scss">
// @import "tailwindcss/base";
// @import "tailwindcss/components";
// @import "tailwindcss/utilities";
</style>

<script>
import HelloWorld from './components/HelloWorld';

export default {
  name: 'App',
  components: {
    // eslint-disable-next-line
    HelloWorld,
  },
  data () {
    return {
      drawer: false,
      items: [
        { title: 'Customers', icon: 'mdi-account-heart' },        
        { title: 'Devices', icon: 'mdi-devices' },
        { title: 'Tickets', icon: 'mdi-ticket' },
        { title: 'Invoices', icon: 'mdi-file-table' },
        { title: 'Point Of Sale', icon: 'mdi-currency-usd' },
        { title: 'Reporting', icon: 'mdi-chart-areaspline' }
      ],
    }
  },
};
</script>
