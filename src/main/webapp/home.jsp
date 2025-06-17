<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>FastX Bus Booking System</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<jsp:include page="menu.jsp"></jsp:include>

  <div class="container mt-4">
    <h1 class="text-center text-primary mb-4">FastX Bus Booking System</h1>

    <!-- Navigation Tabs -->
    <ul class="nav nav-tabs mb-3" id="mainTabs" role="tablist">
      <li class="nav-item" role="presentation">
        <button class="nav-link active" id="search-tab" data-bs-toggle="tab" data-bs-target="#search" type="button">Route Search</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link" id="route-tab" data-bs-toggle="tab" data-bs-target="#route" type="button">Route Details & Booking</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link" id="ticket-tab" data-bs-toggle="tab" data-bs-target="#ticket" type="button">Ticket Confirmation</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link" id="user-tab" data-bs-toggle="tab" data-bs-target="#user" type="button">User Dashboard</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link" id="admin-tab" data-bs-toggle="tab" data-bs-target="#admin" type="button">Admin Dashboard</button>
      </li>
    </ul>

    <!-- Tab Content -->
    <div class="tab-content" id="mainTabsContent">

      <!-- 1. Route Search -->
      <div class="tab-pane fade show active" id="search" role="tabpanel">
        <div class="bg-white p-4 rounded shadow">
          <h4 class="text-success mb-3">Search for Buses</h4>
          <form>
            <div class="row mb-3">
              <div class="col-md-4">
                <input type="text" class="form-control" placeholder="From">
              </div>
              <div class="col-md-4">
                <input type="text" class="form-control" placeholder="To">
              </div>
              <div class="col-md-4">
                <input type="date" class="form-control">
              </div>
            </div>
            <button class="btn btn-primary">Search Buses</button>
          </form>
        </div>
      </div>

      <!-- 2. Route Details & Booking -->
      <div class="tab-pane fade" id="route" role="tabpanel">
        <div class="bg-white p-4 rounded shadow">
          <h4 class="text-success mb-3">Route Details & Booking</h4>
          <p><strong>Route:</strong> Pune → Mumbai</p>
          <p><strong>Date:</strong> 2025-06-20</p>
          <p><strong>Departure:</strong> 8:00 AM | <strong>Arrival:</strong> 12:00 PM</p>
          <p><strong>Seats Available:</strong> 15 | <strong>Fare:</strong> ₹400</p>
          <form>
            <label>Select Seats:</label>
            <input type="number" class="form-control w-25 mb-2" min="1" max="10">
            <button class="btn btn-success">Book Now</button>
          </form>
        </div>
      </div>

      <!-- 3. Ticket Confirmation -->
      <div class="tab-pane fade" id="ticket" role="tabpanel">
        <div class="bg-white p-4 rounded shadow text-center">
          <h4 class="text-success">Ticket Booked Successfully</h4>
          <p><strong>PNR:</strong> FX123456</p>
          <p><strong>Route:</strong> Pune → Mumbai</p>
          <p><strong>Date:</strong> 2025-06-20 | <strong>Seats:</strong> 2</p>
          <p><strong>Total Fare:</strong> ₹800</p>
          <p>E-ticket sent to <strong>user@example.com</strong></p>
        </div>
      </div>

      <!-- 4. User Dashboard -->
      <div class="tab-pane fade" id="user" role="tabpanel">
        <div class="bg-white p-4 rounded shadow">
          <h4 class="text-primary mb-3">User Dashboard</h4>
          
          <h5 class="text-success">Upcoming Trips</h5>
          <table class="table table-bordered text-center mb-4">
            <thead class="table-light">
              <tr>
                <th>Route</th>
                <th>Date</th>
                <th>Seats</th>
                <th>Fare</th>
                <th>Status</th>
                <th>Cancel</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Pune → Mumbai</td>
                <td>2025-06-20</td>
                <td>2</td>
                <td>₹800</td>
                <td>Confirmed</td>
                <td><button class="btn btn-danger btn-sm">Cancel</button></td>
              </tr>
            </tbody>
          </table>

          <h5 class="text-secondary">Profile</h5>
          <p><strong>Name:</strong> Shantanu Agarkar</p>
          <p><strong>Email:</strong> shantanu@example.com</p>
          <button class="btn btn-outline-primary btn-sm">Edit Profile</button>
        </div>
      </div>

      <!-- 5. Admin Dashboard -->
      <div class="tab-pane fade" id="admin" role="tabpanel">
        <div class="bg-white p-4 rounded shadow">
          <h4 class="text-danger mb-3">Admin Dashboard</h4>
          
          <h5 class="mb-2">Manage Bus Schedules</h5>
          <table class="table table-bordered text-center">
            <thead class="table-light">
              <tr>
                <th>Route</th>
                <th>Date</th>
                <th>Departure</th>
                <th>Seats</th>
                <th>Booked</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Pune → Mumbai</td>
                <td>2025-06-20</td>
                <td>08:00 AM</td>
                <td>40</td>
                <td>15</td>
                <td><button class="btn btn-warning btn-sm">Edit</button></td>
              </tr>
            </tbody>
          </table>
          <button class="btn btn-success mt-3">Add New Route</button>
        </div>
      </div>

    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
