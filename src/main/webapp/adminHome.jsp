<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
   <c:import url="adminHeader.jsp"></c:import>
    <div class="d-flex mt-2 mb-2">
     
     <c:import url="adminSidebar.jsp"></c:import>

      <div class="w-75 rounded me-2 bg-dark p-2 text-white">
        <div
          class="p-2 d-flex justify-content-between flex-md-wrap h-100"
          style="height: 85vh"
        >
          <div
            class="bg-secondary rounded p-1"
            style="width: 23%; height: 100px"
          >
            <div class="d-flex flex-column align-items-end p-2">
              <h4 class="mb-0 mt-2">Movies</h4>
              <p>100</p>
            </div>
          </div>
          <div
            class="bg-secondary rounded p-1"
            style="width: 23%; height: 100px"
          >
            <div class="d-flex flex-column align-items-end p-2">
              <h4 class="mb-0 mt-2">Series</h4>
              <p>100</p>
            </div>
          </div>
          <div
            class="bg-secondary rounded p-1"
            style="width: 23%; height: 100px"
          >
            <div class="d-flex flex-column align-items-end p-2">
              <h4 class="mb-0 mt-2">Users</h4>
              <p>100</p>
            </div>
          </div>
          <div
            class="bg-secondary rounded p-1"
            style="width: 23%; height: 100px"
          >
            <div class="d-flex flex-column align-items-end p-2">
              <h4 class="mb-0 mt-2">Payment</h4>
              <p>100</p>
            </div>
          </div>
          <div>
            <canvas id="myChart" width="800" height="400"></canvas>
          </div>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
      const labels = ["January", "February", "March", "April", "May", "June"];

      const data = {
        labels: labels,
        datasets: [
          {
            label: "My First dataset",
            backgroundColor: "rgb(255, 99, 132)",
            borderColor: "rgb(255, 99, 132)",
            data: [0, 10, 5, 2, 20, 30, 45],
            data: [0, 10, 15, 20, 10, 25, 44],
          },
        ],
      };

      const config = {
        type: "line",
        data: data,
        options: {},
      };
    </script>
    <script>
      const myChart = new Chart(document.getElementById("myChart"), config);
    </script>
  </body>
</html>
