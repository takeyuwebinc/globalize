if ::ActiveRecord.version < Gem::Version.new("7.2.0")
  ActiveSupport::Deprecation.silence do
    class BadConfiguration < ActiveRecord::Base
      translates :name
    end
  end
else
  ActiveSupport.deprecator.silence do
    class BadConfiguration < ActiveRecord::Base
      translates :name
    end
  end
end
