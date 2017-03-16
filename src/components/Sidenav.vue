<template lang="pug">
ul#nav-mobile.side-nav.fixed
  li.user-panel.parent-list-item
    div.indigo
      user-widget
  li.parent-list-item
    ul.collapsible( data-collapsible='expandable' )
      li
        a.collapsible-header.indigo.active
          i.material-icons map
          span.badge
            i.material-icons expand_more
            i.material-icons expand_less
          | Map
        div.collapsible-body
          ul
            li
              a( href='#' )
                i.material-icons my_location
                | My position
            li
              a( href='#' )
                i.material-icons add_location
                | Add point
      li
        div.collapsible-header.indigo
          i.material-icons chat
          span.badge
            i.material-icons expand_more
            i.material-icons expand_less
          | Chat
        div.collapsible-body

  div.adwords-area
    | GOOGLE ADSENSE
</template>

<script>
    import UserWidget from './UserWidget'

    export default {
        name: 'sidenav',
        components: {
            'user-widget': UserWidget
        }
    }
</script>
