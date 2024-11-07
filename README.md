# niployments <3 Docker & Kubernetes

## Website application

The website application is located in the `website` directory.
It is a simple Flask application that returns has a single route, `/`, that returns the string "Hello World, from Python 3.13!".

To run the application, you should execute the following commands:

```bash
cd website
./create_venv.sh
source .venv/bin/activate
flask run
```

This will create a virtual environment, install the required dependencies, and run the application.
By default, the application will be available at http://127.0.0.1:5000/.

> [!NOTE]
> You can check your installed Python version by running `python3 -V`.


### Tasks

- [ ] Setup and run the website application, as per the instructions above.

  - Did you successfully run the application?

    If not, what went wrong? If yes, what could've gone wrong?

## Docker


### Tasks

- [ ] Create a Dockerfile for the website application.

- [ ] Build an image for the website application and push it to niployments' registry.

## Kubernetes

### Tasks

- [ ] Start a development Kubernetes cluster.

- [ ] Create a Deployment resource for the website application.

- [ ] Create a Service resource for the website application.

- [ ] Apply the Deployment and Service resources to the cluster.

- [ ] Check that the website application is running in the cluster.
