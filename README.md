# Early-stage diabetes risk prediction:

![alt text](https://live.staticflickr.com/2919/14366209098_75ab52907c.jpg)

[image source](https://live.staticflickr.com/2919/14366209098_75ab52907c.jpg)

- According to the world health organization. There was a significant rise in the number of people with diabetes from 108 million to 422 million between 1980 and 2014. Additionally, there was about a 5% increase in premature death from diabetes in the last 16 years.

- A logistic regression model to predict whether a person is likely to develop diabetes given age, sex, and other features such as sudden weight loss, visual blurring, etc. Since the data has some imbalance, SMOTE was used.  Recursive feature elimination was performed to determine the most important features and remove features that don't improve the model. The accuracy, precision, and recall before and after removing those features were compared. To automate the data analysis, a pipeline for data scaling and modeling was built. For reproducibility, I used a docker was to share the containerized app.

1. Clone the repo localy
2. Go to the root of the repo folder
3. To build the image run the following command:
`docker build -t early_detector .`
4. Run the following commans to creat the container
`docker run -p 9999:8888 early_detector`
5. To access the notebook, open this file in a browser with the given link in the broswer,it wll be something like this
`http://127.0.0.1:8888/?token=xxxxx`, only chnage the `8888` portion to `9999` 
6. To stop the browser, press `crtl`+ `c` in the terminal that has thee browser running
7. Make sure to remove the container `docker rm [container id]`, to access the container id, you can list the runnig container by `docker ps` or those who stopped using `docker ps -a`, then proceed to remove the image using `docker rmi [image id]`, and to get the image id, you can simpy run `docker images`
