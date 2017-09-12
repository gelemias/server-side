import Vapor

extension Droplet {
    func setupRoutes() throws {
        get("hello") { req in
            var json = JSON()
            try json.set("hello", "world")
            return json
        }

        get("plaintext") { req in
            return "Hello, world!"
        }

        // response to requests to /info domain
        // with a description of the request
        get("info") { req in
            return req.description
        }

        get("description") { req in return req.description }

        get("greet") { req in
            let name = req.data["name"]?.string ?? ", what's your name? :)"
            return "Hello \(name)"
        }

        post("post") { req in
            guard let name = req.data["name"]?.string else {
                return "⚠️ Please provide a valid name as parameter!"
            }

            return try JSON(node: ["message": "hello pinkfloid \(name)"])
        }

        get("template1") { req in
            guard let name = req.data["name"]?.string else {
                return "⚠️ Please provide a valid name as ?name=<your_name>"
            }

            return try self.view.make("hello", Node(node:["name": name]))
        }

        get("template2") { req in
            let users = try [["name": "Ray", "email": "ray@tutorials.com"],
                             ["name": "Ignatius", "email": "ignatius@farray.com"],
                             ["name": "David", "email": "david@broncano.com"],
                             ["name": "Queque", "email": "queque@demiguel.com" ]].makeNode(in: nil)
            return try self.view.make("hello2", Node(node:["users": users]))
        }

        get("template3") { req in
            guard let sayHello = req.data["sayHello"]?.bool else {
                fatalError()
            }

            return try self.view.make("hello3", Node(node: ["sayHello": sayHello.makeNode(in: nil)]))
        }

        try resource("posts", PostController.self)
    }
}
