module ActionView
  module Helpers
    class DateTimeSelector
      def select_hour_with_twelve_hour_time 
        datetime = @datetime
        options = @options
        return select_hour_without_twelve_hour_time unless options[:twelve_hour].eql? true

        if options[:use_hidden]
          build_hidden(:hour, hour)
        else
          val = datetime ? (datetime.kind_of?(Fixnum) ? datetime : datetime.hour) : ''
          hour_options = []
          0.upto(23) do |hr|
            ampm = hr <= 11 ? ' AM' : ' PM'
            ampm_hour = case hr
              when 0, 12 then 12
              when 1..11 then hr
              when 13..23 then hr - 12
            end
                          
            hour_options << ((val == hr) ?               
            %(<option value="#{hr}" selected="selected">#{ampm_hour}#{ampm}</option>\n) :               
            %(<option value="#{hr}">#{ampm_hour}#{ampm}</option>\n)             
            )
          end           

          build_select(:hour, hour_options.join)         
        end 
              
      end
             
      alias_method_chain :select_hour, :twelve_hour_time     
    end   
  end
end