# Go API - Say Hello

This is a simple Go application that exposes an HTTP API endpoint to greet users.

## Features

*   A `/hello` endpoint that returns a greeting.
*   Accepts an optional `name` query parameter to personalize the greeting.
*   Includes unit tests.
*   Provides a Dev Container configuration for a consistent development environment.

## Getting Started

### Prerequisites

*   Go (version 1.24 or later recommended - see `.devcontainer/go-api/devcontainer.json` for the specific version used in the dev container)
*   (Optional) Docker and VS Code with the Dev Containers extension to use the provided development environment.

### Running the API

1.  **Clone the repository (if you haven't already):**
    ```bash
    git clone <your-repository-url>
    cd <your-repository-directory>/go-api
    ```

2.  **Run the application:**
    ```bash
    go run main.go
    ```
    The API will start, typically listening on a port like `8080` (you might need to adjust the `README` if your `main.go` specifies a different port).

### Running Tests

To run the unit tests:

```bash
go test -v ./...
```

### Using the Dev Container (Recommended)

1. Make sure you have Docker installed and running.
2. Install the Dev Containers extension in VS Code.
3. Open the `root` folder of the repository (the one containing `.devcontainer`) in VS Code.
4. VS Code should prompt you to "Reopen in Container". Click it.
5. VS Code will build the container image and start the development environment inside it.
6. Once the container is running, you can use the integrated terminal in VS Code to run the commands mentioned above (`go run main.go`, `go test -v ./...`).


## API Usage

The API exposes one main endpoint:

- `GET /hello`: Returns a default greeting.
  - Example: `curl http://localhost:8080/hello`
  - Response: `Hello, world!`

- `GET /hello?name=<your_name>`: Returns a personalized greeting.
  - Example: `curl http://localhost:8080/hello?name=DevOps`
  - Response: `Hello, DevOps!`

> (Note: Replace `localhost:8080` with the actual host and port if it differs)

Feel free to adjust the port number, Go version details, or add more specific instructions based on your `main.go` file and project setup.

## :thinking: Contributing

Contributions are welcome! Please follow these steps:

1.  **Fork** the repository on GitHub.
2.  **Clone** your forked repository locally.
3.  Create a new **branch** for your feature or bug fix (`git checkout -b my-new-feature`).
4.  Make your changes and **commit** them (`git commit -am '[feat](scope): add some feature'`).
5.  Ensure all **tests pass** (`go test`).
6.  **Push** your changes to your fork (`git push origin my-new-feature`).
7.  Create a **Pull Request** on the original repository.

Please ensure your code follows Go best practices and includes tests for new functionality.

## :memo: License

This project is under the MIT license. See the [LICENSE](LICENSE) for more details.

---

Made with :heart: by [Diego Mais](https://diegomais.github.io/) :wave:.
