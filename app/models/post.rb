class Post < ActiveRecord::Base
   enum jobtype: {"노출":0, "비노출":1}
end
