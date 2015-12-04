curl -XPUT "http://$HOST_NAME/_template/$TEMPLATE_NAME" -d '
{
  "template" : "mytest",
  "settings" : {
    "index.refresh_interval" : "60s",
    "analysis" : {
      "filter" : {
        "sdk_name_filter" : {
          "type":"pattern_replace",
          "pattern":"^sn=([a-zA-Z]{1,10});sv=.*$",
          "replacement":"$1"
        },
        "sdk_version_filter" : {
          "type":"pattern_replace",
          "pattern":"^sn=[a-zA-Z]{1,10};sv=([a-zA-Z0-9.-]{1,20}).*$",
          "replacement":"$1"
        },
        "sdk_pv_filter" : {
          "type":"pattern_replace",
          "pattern":"^sn=[a-zA-Z]{1,10};sv=[a-zA-Z0-9.-]{1,20};pv=([a-zA-Z0-9._-]{1,20})$",
          "replacement":"$1"
        },
        "sdk_pv_filter_exclude" : {
          "type":"pattern_replace",
          "pattern":"^sn=[a-zA-Z]{1,10};sv=[a-zA-Z0-9.-]{1,20}$",
          "replacement":"-"
        },
        "path_filter_app_ojbect" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects$",
          "replacement" : "app_object"
        },
        "path_filter_app_ojbect_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "app_object_id"
        },
        "path_filter_app_bucket_query" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/query$",
          "replacement" : "app_bucket_query"
        },
        "path_filter_user_object" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/[a-zA-Z0-9._-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects$",
          "replacement" : "user_object"
        },
        "path_filter_user_object_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/[a-zA-Z0-9._-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "user_object_id"
        },
        "path_filter_user_bucket_query" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/[a-zA-Z0-9._-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/query$",
          "replacement" : "user_bucket_query"
        },
        "path_filter_group_object" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects$",
          "replacement" : "group_object"
        },
        "path_filter_group_object_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "group_object_id"
        },
        "path_filter_group_bucket_query" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/query$",
          "replacement" : "group_bucket_query"
        },

        "path_filter_thing_object" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects$",
          "replacement" : "thing_object"
        },
        "path_filter_thing_object_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/objects/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "thing_object_id"
        },
        "path_filter_thing_bucket_query" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,64}\/buckets\/[a-zA-Z0-9._-]{1,64}\/query",
          "replacement" : "thing_bucket_query"
        },

        "path_filter_user" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users$",
          "replacement" : "user"
        },
        "path_filter_user_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "user_id"
        },
        "path_filter_oauth2_token" : {
          "type":"pattern_replace",
          "pattern" : "^\/oauth2\/token$",
          "replacement" : "oauth2_token"
        },
        "path_filter_social_client_token" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/integration\/[a-zA-Z0-9._-]{1,64}$",
          "replacement" : "social_client_token"
        },
        "path_filter_social_link_client_token" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/integration\/[a-zA-Z0-9._-]{1,64}\/link$",
          "replacement" : "social_link_client_token"
        },
        "path_filter_social_webauth" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/integration\/webauth/connector\\?id=[a-zA-Z0-9._-]{1,64}$",
          "replacement" : "social_webauth"
        },
        "path_filter_password_reset" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/(EMAIL:|PHONE:)[a-zA-Z0-9%@#._+-]{1,256}\/password\/request-reset$",
          "replacement" : "password_reset"
        },
        "path_filter_find_user" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/(EMAIL:|PHONE:|LOGIN_NAME:)(?!\/).+$",
          "replacement" : "find_user"
        },

        "path_filter_app_topic" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/topics$",
          "replacement" : "app_topic"
        },
        "path_filter_app_topic_subscription" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/subscriptions\/users\/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "app_topic_subscription"
        },
        "path_filter_app_topic_message" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/messages$",
          "replacement" : "app_topic_message"
        },

        "path_filter_user_topic" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/[a-zA-Z0-9._-]{1,64}\/topics$",
          "replacement" : "user_topic"
        },
        "path_filter_user_topic_subscription" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/[a-zA-Z0-9._-]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/subscriptions\/users\/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "user_topic_subscription"
        },
        "path_filter_user_topic_message" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/users\/[a-zA-Z0-9._-]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/messages$",
          "replacement" : "user_topic_message"
        },

        "path_filter_group_topic" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/topics$",
          "replacement" : "group_topic"
        },
        "path_filter_group_topic_subscription" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/subscriptions\/users\/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "group_topic_subscription"
        },
        "path_filter_group_topic_message" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/messages$",
          "replacement" : "group_topic_message"
        },

        "path_filter_thing_topic" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,64}\/topics$",
          "replacement" : "thing_topic"
        },
        "path_filter_thing_topic_subscription" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/subscriptions\/users\/[a-zA-Z0-9._-]{1,100}$",
          "replacement" : "thing_topic_subscription"
        },
        "path_filter_thing_topic_message" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,64}\/topics\/[a-zA-Z0-9._-]{1,64}\/push\/messages$",
          "replacement" : "thing_topic_message"
        },

        "path_filter_group" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups$",
          "replacement" : "group"
        },
        "path_filter_group_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}$",
          "replacement" : "group_id"
        },
        "path_filter_group_name" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/name$",
          "replacement" : "group_name"
        },
        "path_filter_group_owner" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/owner$",
          "replacement" : "group_owner"
        },
        "path_filter_list_groups_by_member" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\\?is_member=[a-zA-Z0-9._-]{1,64}$",
          "replacement" : "list_groups_by_member"
        },
        "path_filter_list_groups_by_owner" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\\?is_owner=[a-zA-Z0-9._-]{1,64}$",
          "replacement" : "list_groups_by_owner"
        },
        "path_filter_group_members" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/members$",
          "replacement" : "group_members"
        },
        "path_filter_group_members_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/groups\/[a-zA-Z0-9._-]{1,64}\/members/[a-zA-Z0-9._-]{1,64}$",
          "replacement" : "group_members_id"
        },

        "path_filter_thing" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things$",
          "replacement" : "thing"
        },
        "path_filter_thing_id" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,100}$",
          "replacement" : "thing_id"
        },
        "path_filter_thing_status" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/things\/[a-zA-Z0-9._:-]{1,100}\/status$",
          "replacement" : "thing_status"
        },

        "path_filter_acl" : {
          "type":"pattern_replace",
          "pattern" : "^.*acl.*$",
          "replacement" : "acl"
        },
        "path_filter_object_body" : {
          "type":"pattern_replace",
          "pattern" : "^.*\/objects\/[a-zA-Z0-9._-]{1,100}\/body.*$",
          "replacement" : "object_body"
        },

        "path_filter_app" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}$",
          "replacement" : "app"
        },

        "path_filter_analytics_data" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/analytics\/[a-zA-Z0-9._-]{1,64}\/data$",
          "replacement" : "analytics_data"
        },
        "path_filter_analytics_event" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/analytics\/events$",
          "replacement" : "analytics_event"
        },
        "path_filter_servercode" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-zA-Z0-9]{1,64}\/server-code\/.*$",
          "replacement" : "servercode"
        },
        "path_normalization_filter_apps" : {
          "type":"pattern_replace",
          "pattern" : "^\/apps\/[a-z0-9]{8}",
          "replacement" : "/apps/\\${appId}"
        },
        "path_normalization_filter_groups" : {
          "type":"pattern_replace",
          "pattern" : "\/groups\/[a-zA-Z0-9._-]{1,64}",
          "replacement" : "/groups/\\${groupId}"
        },
        "path_normalization_filter_users" : {
          "type":"pattern_replace",
          "pattern" : "\/users\/[a-zA-Z0-9._-]{1,64}",
          "replacement" : "/users/\\${userId}"
        },
        "path_normalization_filter_things" : {
          "type":"pattern_replace",
          "pattern" : "\/things\/[a-zA-Z0-9._-]{1,64}",
          "replacement" : "/things/\\${thigId}"
        },
        "path_normalization_filter_analytics" : {
          "type":"pattern_replace",
          "pattern" : "\/analytics\/[a-zA-Z0-9._-]{1,64}",
          "replacement" : "/analytics/\\${analyticsId}"
        },
        "path_normalization_filter_objects" : {
          "type":"pattern_replace",
          "pattern" : "\/objects\/[a-zA-Z0-9._-]{1,64}",
          "replacement" : "/objects/\\${objectId}"
        }
      },
      "analyzer" : {
        "sdk_name_analyzer":{
          "type":"custom",
          "tokenizer":"keyword",
          "filter": ["sdk_name_filter"]
        },
        "sdk_version_analyzer":{
          "type":"custom",
          "tokenizer":"keyword",
          "filter": ["sdk_version_filter"]
        },
        "sdk_pv_analyzer":{
          "type":"custom",
          "tokenizer":"keyword",
          "filter": ["sdk_pv_filter", "sdk_pv_filter_exclude"]
        },
        "path_analyzer":{
          "type" : "custom",
          "tokenizer" : "keyword",
          "filter" : [
            "path_filter_app_ojbect",
            "path_filter_app_ojbect_id",
            "path_filter_user_object",
            "path_filter_user_object_id",
            "path_filter_group_object",
            "path_filter_group_object_id",
            "path_filter_thing_object",
            "path_filter_thing_object_id",
            "path_filter_user",
            "path_filter_user_id",
            "path_filter_oauth2_token",
            "path_filter_social_client_token",
            "path_filter_social_link_client_token",
            "path_filter_social_webauth",
            "path_filter_password_reset",
            "path_filter_find_user",
            "path_filter_app_topic",
            "path_filter_app_topic_subscription",
            "path_filter_app_topic_message",
            "path_filter_user_topic",
            "path_filter_user_topic_subscription",
            "path_filter_user_topic_message",
            "path_filter_group_topic",
            "path_filter_group_topic_subscription",
            "path_filter_group_topic_message",
            "path_filter_thing_topic",
            "path_filter_thing_topic_subscription",
            "path_filter_thing_topic_message",
            "path_filter_group",
            "path_filter_group_id",
            "path_filter_group_name",
            "path_filter_group_owner",
            "path_filter_list_groups_by_member",
            "path_filter_list_groups_by_owner",
            "path_filter_group_members",
            "path_filter_group_members_id",
            "path_filter_thing",
            "path_filter_thing_id",
            "path_filter_thing_status",
            "path_filter_acl",
            "path_filter_object_body",
            "path_filter_app",
            "path_filter_app_bucket_query",
            "path_filter_user_bucket_query",
            "path_filter_group_bucket_query",
            "path_filter_thing_bucket_query",
            "path_filter_analytics_data",
            "path_filter_analytics_event",
            "path_filter_servercode"
          ]
        },
        "path_normalization_analyzer":{
          "type" : "custom",
          "tokenizer" : "keyword",
          "filter" : [
            "path_normalization_filter_apps",
            "path_normalization_filter_groups",
            "path_normalization_filter_users",
            "path_normalization_filter_things",
            "path_normalization_filter_analytics",
            "path_normalization_filter_objects"
          ]
        }
      }
    }
  },
  "mappings" : {
    "fluentd" : {
      "_all" : {"enabled" : false},
      "_timestamp" : { "enabled" : true },
      "properties" : {
        "sdk" : {
          "type": "string",
          "fields": {
            "name" : {
              "type": "string",
              "analyzer" : "sdk_name_analyzer"
            },
            "version" : {
              "type": "string",
              "analyzer" : "sdk_version_analyzer"
            },
            "pv" : {
              "type": "string",
              "analyzer" : "sdk_pv_analyzer"
            }
          }
        },
        "path" : {
          "type": "string",
          "fields": {
            "contents" : {
              "type": "string",
              "analyzer" : "path_analyzer"
            },
            "normalized" : {
              "type": "string",
              "analyzer" : "path_normalization_analyzer"
            }
          }
        }
      },
      "dynamic_templates":
      [
        {
          "string_fields": {
            "match": "app|app_id|city|site|country|country_code|host_id|method|method_override|status|user|version|ipaddr",
            "match_pattern": "regex",
            "mapping": { "type" : "string", "index" : "not_analyzed" }
          }
        },
        {
          "number_fields": {
            "match": "elapsed|ressize",
            "match_pattern": "regex",
            "mapping": { "type" : "integer", "index" : "not_analyzed" }
          }
        },
        {
          "user_agent_field": {
            "match": "user_agent",
            "match_mapping_type" : "string",
            "mapping": { "type" : "string", "index" : "analyzed" }
          }
        }
      ]
    }
  }
}
'
# vim: set sw=2 sts=2:
