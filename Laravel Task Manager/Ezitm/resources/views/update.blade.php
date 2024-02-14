<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head> 
<form action={{url('api/update/'.$data->id)}} method="POST">
    {{-- @method("PUT") --}}
    @csrf
    <div class="form-group row">
        <label  class="col-sm-2 col-form-label">Title</label>
        <div class="col-sm-10">
          <input type="text"  class="form-control-plaintext" id="title" name="title" value="{{$data->title}}"></input>
        </div>
      </div>
    <div class="form-group row">
      <label  class="col-sm-2 col-form-label">Description</label>
      <div class="col-sm-10">
        <input type="text"  class="form-control-plaintext" id="desp" name="desp" value="{{$data->desp}}"></input>
      </div>
    </div>
    <label  class="col-sm-2 col-form-label">Assigned To</label>
    <select required name="assigned">
        @foreach($user as $u)
        <option selecteds value={{$u->id}}>{{$u->name}}</option>
        @endforeach
      </select><br>
    
    <label  class="col-sm-2 col-form-label">Status</label>
    <select required name="status">
        <option selected>To Do</option>
        <option value="0">In Progress</option>
        <option value="1">Completed</option>
      </select><br>
    <button type="submit">Update</button>
  </form>