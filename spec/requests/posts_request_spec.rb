require 'rails_helper'

describe PostsController do

  describe '#index' do
    it 'returns Posts' do
      Post.create(title: "Im a post", content: "Sup")
      Post.create(title: "Im another post", content: "Sup")

      get posts_path, format: :json

      expect(response.status).to eq 200

      unless link = router.find_request_link(request)
        raise Committee::InvalidResponse.new("`#{request.request_method} #{request.path_info}` undefined in schema.")
      end

      if Committee::ResponseValidator.validate?(response.status)
        data = JSON.parse(response.body)
        Committee::ResponseValidator.new(link).call(response.status, response.headers, data)
      end
    end
  end

  def schema_contents
    #JSON.parse(File.read("docs/schemata/post.json"))
    JSON.parse(File.read("docs/schema.json"))
  end

  def schema
    @schema ||= begin
      schema = JsonSchema.parse!(schema_contents)
      schema.expand_references!
      schema
    end
  end

  def router
    @router ||= Committee::Router.new(schema, prefix: nil)
  end
end
