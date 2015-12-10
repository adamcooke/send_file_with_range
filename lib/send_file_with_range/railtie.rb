require 'send_file_with_range/controller_extension'

module SendFileWithRange
  class Railtie < ::Rails::Railtie

    initializer 'send_file_with_range.include' do
      ActionController::DataStreaming.send :include, SendFileWithRange::ControllerExtension
    end

  end
end
