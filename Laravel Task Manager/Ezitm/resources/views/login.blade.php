<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head> 
  <div class="container text-center mt-5">
    <h1>Task Management System</h1>
  </div>
<form action={{route('login')}} method="POST">
    @csrf
    <div class="container" style="background-color: burlywood; margin:100px; padding:70px; padding-bottom:10px">
    <div class="form-group row">
      <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-10">
        <input type="text"  class="form-control" id="email" name="email" placeholder="Email">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="password" placeholder="Password" name="password">
      </div>
    </div>
   {{-- <button class="btn btn-dark" type="submit" justify-contentcenter;>Login</button> --}}
    <button class="btn btn-dark mx-auto d-block" type="submit">Login</button><br>
    
    {{-- <button class="btn btn-dark mx-auto d-block" type="submit">Register</button> --}}
    <button class="btn btn-dark mx-auto d-block" type="submit">
      <a href="{{route('regindex')}}"> Register</a>
    </button>
   
  </div>
  </form>
