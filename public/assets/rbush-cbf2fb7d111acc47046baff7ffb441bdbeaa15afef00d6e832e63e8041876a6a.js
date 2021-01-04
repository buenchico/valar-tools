!function(){"use strict";function t(i,n){if(!(this instanceof t))return new t(i,n);this._maxEntries=Math.max(4,i||9),this._minEntries=Math.max(2,Math.ceil(.4*this._maxEntries)),n&&this._initFormat(n),this.clear()}function i(t,i){t.bbox=n(t,0,t.children.length,i)}function n(t,i,n,r){for(var o,a=e(),s=i;s<n;s++)o=t.children[s],h(a,t.leaf?r(o):o.bbox);return a}function e(){return[Infinity,Infinity,-Infinity,-Infinity]}function h(t,i){return t[0]=Math.min(t[0],i[0]),t[1]=Math.min(t[1],i[1]),t[2]=Math.max(t[2],i[2]),t[3]=Math.max(t[3],i[3]),t}function r(t,i){return t.bbox[0]-i.bbox[0]}function o(t,i){return t.bbox[1]-i.bbox[1]}function a(t){return(t[2]-t[0])*(t[3]-t[1])}function s(t){return t[2]-t[0]+(t[3]-t[1])}function l(t,i){return(Math.max(i[2],t[2])-Math.min(i[0],t[0]))*(Math.max(i[3],t[3])-Math.min(i[1],t[1]))}function f(t,i){var n=Math.max(t[0],i[0]),e=Math.max(t[1],i[1]),h=Math.min(t[2],i[2]),r=Math.min(t[3],i[3]);return Math.max(0,h-n)*Math.max(0,r-e)}function u(t,i){return t[0]<=i[0]&&t[1]<=i[1]&&i[2]<=t[2]&&i[3]<=t[3]}function c(t,i){return i[0]<=t[2]&&i[1]<=t[3]&&i[2]>=t[0]&&i[3]>=t[1]}function d(t,i,n,e,h){for(var r,o=[i,n];o.length;)(n=o.pop())-(i=o.pop())<=e||(x(t,i,n,r=i+Math.ceil((n-i)/e/2)*e,h),o.push(i,r,r,n))}function x(t,i,n,e,h){for(var r,o,a,s,l,f,u;n>i;){for(n-i>600&&(r=n-i+1,o=e-i+1,a=Math.log(r),s=.5*Math.exp(2*a/3),l=.5*Math.sqrt(a*s*(r-s)/r)*(o-r/2<0?-1:1),x(t,Math.max(i,Math.floor(e-o*s/r+l)),Math.min(n,Math.floor(e+(r-o)*s/r+l)),e,h)),f=t[e],o=i,u=n,p(t,i,e),h(t[n],f)>0&&p(t,i,n);o<u;){for(p(t,o,u),o++,u--;h(t[o],f)<0;)o++;for(;h(t[u],f)>0;)u--}0===h(t[i],f)?p(t,i,u):p(t,++u,n),u<=e&&(i=u+1),e<=u&&(n=u-1)}}function p(t,i,n){var e=t[i];t[i]=t[n],t[n]=e}t.prototype={all:function(){return this._all(this.data,[])},search:function(t){var i=this.data,n=[],e=this.toBBox;if(!c(t,i.bbox))return n;for(var h,r,o,a,s=[];i;){for(h=0,r=i.children.length;h<r;h++)o=i.children[h],c(t,a=i.leaf?e(o):o.bbox)&&(i.leaf?n.push(o):u(t,a)?this._all(o,n):s.push(o));i=s.pop()}return n},collides:function(t){var i=this.data,n=this.toBBox;if(!c(t,i.bbox))return!1;for(var e,h,r,o,a=[];i;){for(e=0,h=i.children.length;e<h;e++)if(r=i.children[e],c(t,o=i.leaf?n(r):r.bbox)){if(i.leaf||u(t,o))return!0;a.push(r)}i=a.pop()}return!1},load:function(t){if(!t||!t.length)return this;if(t.length<this._minEntries){for(var i=0,n=t.length;i<n;i++)this.insert(t[i]);return this}var e=this._build(t.slice(),0,t.length-1,0);if(this.data.children.length)if(this.data.height===e.height)this._splitRoot(this.data,e);else{if(this.data.height<e.height){var h=this.data;this.data=e,e=h}this._insert(e,this.data.height-e.height-1,!0)}else this.data=e;return this},insert:function(t){return t&&this._insert(t,this.data.height-1),this},clear:function(){return this.data={children:[],height:1,bbox:e(),leaf:!0},this},remove:function(t){if(!t)return this;for(var i,n,e,h,r=this.data,o=this.toBBox(t),a=[],s=[];r||a.length;){if(r||(r=a.pop(),n=a[a.length-1],i=s.pop(),h=!0),r.leaf&&-1!==(e=r.children.indexOf(t)))return r.children.splice(e,1),a.push(r),this._condense(a),this;h||r.leaf||!u(r.bbox,o)?n?(i++,r=n.children[i],h=!1):r=null:(a.push(r),s.push(i),i=0,n=r,r=r.children[0])}return this},toBBox:function(t){return t},compareMinX:function(t,i){return t[0]-i[0]},compareMinY:function(t,i){return t[1]-i[1]},toJSON:function(){return this.data},fromJSON:function(t){return this.data=t,this},_all:function(t,i){for(var n=[];t;)t.leaf?i.push.apply(i,t.children):n.push.apply(n,t.children),t=n.pop();return i},_build:function(t,n,e,h){var r,o=e-n+1,a=this._maxEntries;if(o<=a)return i(r={children:t.slice(n,e+1),height:1,bbox:null,leaf:!0},this.toBBox),r;h||(h=Math.ceil(Math.log(o)/Math.log(a)),a=Math.ceil(o/Math.pow(a,h-1))),r={children:[],height:h,bbox:null,leaf:!1};var s,l,f,u,c=Math.ceil(o/a),x=c*Math.ceil(Math.sqrt(a));for(d(t,n,e,x,this.compareMinX),s=n;s<=e;s+=x)for(d(t,s,f=Math.min(s+x-1,e),c,this.compareMinY),l=s;l<=f;l+=c)u=Math.min(l+c-1,f),r.children.push(this._build(t,l,u,h-1));return i(r,this.toBBox),r},_chooseSubtree:function(t,i,n,e){for(var h,r,o,s,f,u,c,d;e.push(i),!i.leaf&&e.length-1!==n;){for(c=d=Infinity,h=0,r=i.children.length;h<r;h++)f=a((o=i.children[h]).bbox),(u=l(t,o.bbox)-f)<d?(d=u,c=f<c?f:c,s=o):u===d&&f<c&&(c=f,s=o);i=s||i.children[0]}return i},_insert:function(t,i,n){var e=this.toBBox,r=n?t.bbox:e(t),o=[],a=this._chooseSubtree(r,this.data,i,o);for(a.children.push(t),h(a.bbox,r);i>=0&&o[i].children.length>this._maxEntries;)this._split(o,i),i--;this._adjustParentBBoxes(r,o,i)},_split:function(t,n){var e=t[n],h=e.children.length,r=this._minEntries;this._chooseSplitAxis(e,r,h);var o=this._chooseSplitIndex(e,r,h),a={children:e.children.splice(o,e.children.length-o),height:e.height,bbox:null,leaf:!1};e.leaf&&(a.leaf=!0),i(e,this.toBBox),i(a,this.toBBox),n?t[n-1].children.push(a):this._splitRoot(e,a)},_splitRoot:function(t,n){this.data={children:[t,n],height:t.height+1,bbox:null,leaf:!1},i(this.data,this.toBBox)},_chooseSplitIndex:function(t,i,e){var h,r,o,s,l,u,c,d;for(u=c=Infinity,h=i;h<=e-i;h++)s=f(r=n(t,0,h,this.toBBox),o=n(t,h,e,this.toBBox)),l=a(r)+a(o),s<u?(u=s,d=h,c=l<c?l:c):s===u&&l<c&&(c=l,d=h);return d},_chooseSplitAxis:function(t,i,n){var e=t.leaf?this.compareMinX:r,h=t.leaf?this.compareMinY:o;this._allDistMargin(t,i,n,e)<this._allDistMargin(t,i,n,h)&&t.children.sort(e)},_allDistMargin:function(t,i,e,r){t.children.sort(r);var o,a,l=this.toBBox,f=n(t,0,i,l),u=n(t,e-i,e,l),c=s(f)+s(u);for(o=i;o<e-i;o++)a=t.children[o],h(f,t.leaf?l(a):a.bbox),c+=s(f);for(o=e-i-1;o>=i;o--)a=t.children[o],h(u,t.leaf?l(a):a.bbox),c+=s(u);return c},_adjustParentBBoxes:function(t,i,n){for(var e=n;e>=0;e--)h(i[e].bbox,t)},_condense:function(t){for(var n,e=t.length-1;e>=0;e--)0===t[e].children.length?e>0?(n=t[e-1].children).splice(n.indexOf(t[e]),1):this.clear():i(t[e],this.toBBox)},_initFormat:function(t){var i=["return a"," - b",";"];this.compareMinX=new Function("a","b",i.join(t[0])),this.compareMinY=new Function("a","b",i.join(t[1])),this.toBBox=new Function("a","return [a"+t.join(", a")+"];")}},"function"==typeof define&&define.amd?define("rbush",function(){return t}):"undefined"!=typeof module?module.exports=t:"undefined"!=typeof self?self.rbush=t:window.rbush=t}();