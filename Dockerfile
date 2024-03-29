FROM registry.access.redhat.com/openshift3/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHB5emlwLWRlbW8tYXBiCmRlc2NyaXB0aW9uOiBQeXRob24gWmlw\
IERlbW8gQVBCIEltcGxlbWVudGF0aW9uCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwK\
bWV0YWRhdGE6IAogIGRvY3VtZW50YXRpb25Vcmw6IGh0dHBzOi8vZ2l0aHViLmNvbS9mdXNvci9h\
cGItZXhhbXBsZXMvdHJlZS9tYXN0ZXIvcHl6aXAtZGVtby1hcGIKICBkZXBlbmRlbmNpZXM6IFsn\
ZG9ja2VyLmlvL2Fuc2libGVwbGF5Ym9va2J1bmRsZS9weS16aXAtZGVtbzpsYXRlc3QnXQogIGRp\
c3BsYXlOYW1lOiBQeXppcCBEZW1vIChBUEIpCiAgbG9uZ0Rlc2NyaXB0aW9uOiBBUEIgSW1wbGVt\
ZW50YXRpb24gb2YgdGhlIFB5dGhvbiB3ZWJhcHAsIGh0dHBzOi8vZ2l0aHViLmNvbS9mdXNvci9w\
eS16aXAtZGVtbwogIHByb3ZpZGVyRGlzcGxheU5hbWU6ICJSZWQgSGF0LCBJbmMuIgpwbGFuczoK\
ICAtIG5hbWU6IGRlZmF1bHQKICAgIGRlc2NyaXB0aW9uOiBQeXRob24gWmlwIERlbW8gQVBCIElt\
cGxlbWVudGF0aW9uCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5h\
bWU6IERlZmF1bHQKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBUaGlzIHBsYW4gcHJvdmlkZXMgYSBw\
eXRob24gd2ViYXBwIGZvciBodHRwczovL2dpdGh1Yi5jb20vZnVzb3IvcHktemlwLWRlbW8KICAg\
ICAgY29zdDogJDAuMDAKICAgIHBhcmFtZXRlcnM6IFtdCg=="

ADD playbooks /opt/apb/actions
ADD roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}

USER apb
