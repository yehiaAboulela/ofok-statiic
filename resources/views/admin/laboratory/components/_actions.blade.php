<div>
    <a class="btn btn-sm btn-warning"
       href="{{route('admin.laboratories.edit',$model->id)}}">
       <i class="fa fa-edit"></i>
    </a>
    <button class="delete_datatable_row btn btn-sm btn-danger" role="button"
            data-delete_url="{{route('admin.laboratories.destroy',$model->id)}}"
            href="#">
        <i class="fa fa-trash"></i>
    </button>

</div>
