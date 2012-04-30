ActiveAdmin.register ContentMiniIntroU do
   menu :label => "small anouncement" ,:parent => "Utilities"
      actions :all, :except => [:destroy]
end
