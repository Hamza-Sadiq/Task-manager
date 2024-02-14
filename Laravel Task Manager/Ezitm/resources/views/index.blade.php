<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Task Management Application</title>
  {{-- <link rel="stylesheet" href="style.css"> --}}
</head>
<style>
  body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.container {
  max-width: 800px;
  margin: 20px auto;
  padding: 0 20px;
}

.navbar {
  background-color: #333;
  color: #fff;
  padding: 10px 0;
}

.navbar .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.auth button {
  margin-left: 10px;
  background-color: #007bff;
  color: #fff;
  border: none;
  padding: 5px 10px;
  border-radius: 5px;
  cursor: pointer;
}

.auth button:hover {
  background-color: #0056b3;
}

.task {
  background-color: #f8f9fa;
  padding: 15px;
  margin-bottom: 10px;
  border-radius: 5px;
}

.modal {
  display: none;
  position: fixed;
  z-index: 999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
}

.modal-content {
  background-color: #fefefe;
  margin: 15% auto;
  padding: 20px;
  border-radius: 5px;
  width: 50%;
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

form input,
form textarea,
form select {
  width: calc(100% - 20px);
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ced4da;
  border-radius: 5px;
}

form button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

form button:hover {
  background-color: #0056b3;
}

  </style>
<body>
  <nav class="navbar">
    <div class="container">
      <h1>Task Manager</h1>
      @if(cookie('access_token'))
    <div class="auth">
        <form method="POST" action="{{ route('logout') }}">
            @csrf
            <button type="submit" class="btn btn-primary">Logout</button>
        </form>
    </div>
    @else
        <div class="auth">
            <a href="{{ route('logindex') }}"><button class="btn btn-primary">Login</button></a>
            <a href="{{ route('regindex') }}"><button class="btn btn-primary">Register</button></a>
        </div>
    @endif

  </nav>

  <div class="container">
    <h2>Tasks</h2>
    @if($userdata->role_as == '0')
    <button onclick="openAddTaskModal()">Add Task</button>
    @endif
    <div id="taskList">
      <!-- Static tasks -->
      @foreach($data as $d)
      <div class="task">
        <h3>{{$d->title}}</h3>
        <p>{{$d->desp}}</p>
        {{-- <p>{{$d->status}}</p> --}}
        @if($d->status == '0')
        <p>In Progress</p>
        @elseif($d->status == '1')
        <p>Completed</p>
        @else
        <p>Unknown</p>
        @endif
        @if($userdata->role_as == '0' || $userdata->role_as == '2')
        <form method="GET" action="{{url('api/updateindex/'.$d->id)}}">
          <button type="submit" name="id" value="{{$d->id}}">Update</button>
        </form>
        @endif
        <br>
        @if($userdata->role_as == '0')
        <form method="POST" action="{{url('api/todo/'.$d->id)}}">
          @csrf
          @method('DELETE')
          <button type="submit" name="id" value="{{$d->id}}">Delete</button>
        </form>
        @endif
      </div>
      @endforeach      
    </div>
  </div>



  <div id="addTaskModal" class="modal">
    <div class="modal-content">
      <span class="close" onclick="closeAddTaskModal()">&times;</span>
      <!-- Task creation form -->
      <h2>Add Task</h2>
      <form id="taskForm" method="POST" action="{{route('store')}}"> 
        @csrf
        <input type="text" placeholder="Task Title" name="title" required><br>
        <textarea placeholder="Task Description" name="desp" required></textarea><br>
        <select required name="assigned">
          @foreach($task as $d)
          <option value="{{$d->email}}">{{$d->name}}</option>
          @endforeach
        </select>
        <select required name="status">
          <option value="">To Do</option>
          <option value="0">In Progress</option>
          <option value="1">Completed</option>
        </select><br>
        <button type="submit">Add Task</button>
      </form>
    </div>
  </div>

  <script src="script.js"></script>
</body>
</html>

<script>
// Function to open login modal
function openLoginModal() {
  document.getElementById('loginModal').style.display = 'block';
}

// Function to close login modal
function closeLoginModal() {
  document.getElementById('loginModal').style.display = 'none';
}

// Function to open registration modal
function openRegisterModal() {
  document.getElementById('registerModal').style.display = 'block';
}

// Function to close registration modal
function closeRegisterModal() {
  document.getElementById('registerModal').style.display = 'none';
}

// Function to open add task modal
function openAddTaskModal() {
  document.getElementById('addTaskModal').style.display = 'block';
}

// Function to close add task modal
function closeAddTaskModal() {
  document.getElementById('addTaskModal').style.display = 'none';
}

// Function to handle task form submission
// document.getElementById('taskForm').addEventListener('submit', function(event) {
//   event.preventDefault();
//   // Add task handling logic here
// });

</script>
