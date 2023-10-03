  <main class="mt-5 main-reg-success">
      <div class="conatiner">
          <div class="row">
              <div class="col-6 mt-5 mx-auto">
                  <h1 class="text-success" style="font-size: 8vh;">welllcome.....</h1>
                  <p class="mt-3 text-secondary">Your registration was successful. Now we are redirecting you to the login page in just <font id="timeD"></font>s....</p>

              </div>
          </div>
      </div>

  </main>
  <script>
      //timer script
      let timeDisplay = document.getElementById("timeD");
      let crntTime = new Date().getTime();
      let target = crntTime + 8000;

      function countD() {
          let now = new Date().getTime();
          let m = target - now;
          let n = Math.floor(m / 1000);
          timeDisplay.innerHTML = n;
          if (n < 1) {
              clearInterval(intT);
              window.location.replace("login.php");
          }
      }

      let intT = setInterval(countD, 550);

  </script>
