# `send_file` with Range

Rails includes a method called `send_file` which allows you to send a file from
your Rails app to a browser. Some files, however, require that data can be
requested in partial chunks with the client providing a range of bytes to be
returned from the file. This is particularily previlent when streaming video
over HTTP.

For example, if you have a video which you want to embed, you need to be able
to return the video file in sections to the browser to allow users to skip
through the video without downloading the whole file.

This little gem just extends Rails' `send_file` method to support this.

## Installation

```ruby
gem 'send_file_with_range'
```

## Usage

To use this, you just need to pass the `:range => true` option to a normal
`send_file` call.

```ruby
class VideoController < ApplicationController

  def play
    path_to_video = Rails.root.join('data', 'some-video.mp4')
    send_file path_to_video, :range => true, :disposition => 'inline', :type => 'video/mp4's
  end

end
```
