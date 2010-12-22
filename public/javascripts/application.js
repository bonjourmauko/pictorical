$(document).ready(function(){
    $(".tweet").tweet({
      username: "pictorical",
      list: null,
      avatar_size: null,
      count: 2,
      intro_text: null,
      outro_text: null,
      join_text:  null,
      auto_join_text_default: null,
      auto_join_text_ed: null,
      auto_join_text_ing: null,
      auto_join_text_reply: null,
      auto_join_text_url: null,
      loading_text: null,
      query: null,
      refresh_interval: null,
      twitter_url: "twitter-pictorical.apigee.com",
      twitter_api_url: "twitter-api-pictorical.apigee.com",
      twitter_search_url: "twitter-search-pictorical.apigee.com"
    });
});