curl -s -XPOST "http://$HOST_NAME/$INDEX/$TYPE/_bulk" --data-binary \
'{ "create" : { "_id" : "1" } }
{ "sdk":"sn=as;sv=2.1.30;pv=21", "path":"/apps/1234/buckets/mybucket/objects" }
{ "create" : { "_id" : "2" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234/buckets/mybucket/objects/1234" }
{ "create" : { "_id" : "3" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/1234/buckets/mybucket/objects/1234" }
{ "create" : { "_id" : "4" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/buckets/mybucket/objects" }
{ "create" : { "_id" : "5" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/buckets/mybucket/objects/1234" }
{ "create" : { "_id" : "6" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users" }
{ "create" : { "_id" : "7" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/1234/buckets/mybucket/objects" }
{ "create" : { "_id" : "8" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/oauth2/token" }
{ "create" : { "_id" : "9" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/integration/facebook" }
{ "create" : { "_id" : "10" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/integration/qq/link" }
{ "create" : { "_id" : "11" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/integration/webauth/connector?id=facebook" }
{ "create" : { "_id" : "12" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/EMAIL:satoshi.kumano@kii.com/password/request-reset" }
{ "create" : { "_id" : "13" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/PHONE:+819047255578/password/request-reset" }
{ "create" : { "_id" : "14" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/1234" }
{ "create" : { "_id" : "15" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/EMAIL:satoshi.kumano@kii.com" }
{ "create" : { "_id" : "16" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/PHONE:+819047255578" }
{ "create" : { "_id" : "17" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/topics" }
{ "create" : { "_id" : "18" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/topics/1234/push/subscriptions/users/1234" }
{ "create" : { "_id" : "19" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/topics/1234/push/messages" }
{ "create" : { "_id" : "20" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/1234/topics" }
{ "create" : { "_id" : "21" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/1234/topics/1234/push/subscriptions/users/1234" }
{ "create" : { "_id" : "22" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/users/1234/topics/1234/push/messages" }
{ "create" : { "_id" : "23" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/topics" }
{ "create" : { "_id" : "24" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/topics/1234/push/subscriptions/users/1234" }
{ "create" : { "_id" : "25" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/topics/1234/push/messages" }
{ "create" : { "_id" : "26" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things/1234/topics" }
{ "create" : { "_id" : "27" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things/1234/topics/1234/push/subscriptions/users/1234" }
{ "create" : { "_id" : "28" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things/1234/topics/1234/push/messages" }
{ "create" : { "_id" : "29" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things/1234/buckets/mybucket/objects" }
{ "create" : { "_id" : "30" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things/1234/buckets/mybucket/objects/1234" }
{ "create" : { "_id" : "31" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups" }
{ "create" : { "_id" : "32" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234" }
{ "create" : { "_id" : "33" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/name" }
{ "create" : { "_id" : "34" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/owner" }
{ "create" : { "_id" : "35" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups?is_member=1234" }
{ "create" : { "_id" : "36" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups?is_owner=1234" }
{ "create" : { "_id" : "37" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/members" }
{ "create" : { "_id" : "38" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/groups/1234/members/1234" }
{ "create" : { "_id" : "39" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things" }
{ "create" : { "_id" : "40" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things/1234" }
{ "create" : { "_id" : "41" } }
{ "sdk":"sn=is;sv=2.3.0;pv=9.1", "path":"/apps/1234/things/1234/status" }
{ "create" : { "_id" : "42" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234/buckets/mybucket/objects/1234/acl/SUBJECT/PRINCIPAL" }
{ "create" : { "_id" : "43" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234/buckets/mybucket/objects/1234/body" }
{ "create" : { "_id" : "44" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234" }
{ "create" : { "_id" : "45" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234/buckets/mybucket/query" }
{ "create" : { "_id" : "46" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234/users/1234/buckets/mybucket/query" }
{ "create" : { "_id" : "47" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234/groups/1234/buckets/mybucket/query" }
{ "create" : { "_id" : "48" } }
{ "sdk":"sn=jss;sv=2.1.31", "path":"/apps/1234/things/1234/buckets/mybucket/query" }
'
# vim: set sw=2 sts=2:
