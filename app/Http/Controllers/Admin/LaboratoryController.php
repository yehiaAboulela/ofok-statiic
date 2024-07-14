<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\LaboratoryDatatable;
use App\Department;
use App\DepartmentImage;
use App\Http\Controllers\Controller;
use App\Http\Requests\Laboratory\LaboratoryRequest;
use App\Laboratory;
use App\ManageText;
use App\NotificationText;
use App\ValidationText;
use Illuminate\Http\Request;
use Str;

class LaboratoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(LaboratoryDatatable $datatable)
    {
        return $datatable->render('admin.laboratory.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.laboratory.create');
    }

    /**
     * @param LaboratoryRequest $laboratoryRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(LaboratoryRequest $laboratoryRequest)
    {
        // project demo mode check
        Laboratory::create($laboratoryRequest->validated());
        return redirect()
            ->route('admin.laboratories.index')
            ->with(['message' => __('dashboard.general.success_operation'), 'alert_type' => 'success']);

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Department $department
     * @return \Illuminate\Http\Response
     */
    public function show(Department $department)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Department $department
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function edit(Laboratory $laboratory)
    {
        return view('admin.laboratory.edit', compact('laboratory'));
    }

    /**
     * @param LaboratoryRequest $laboratoryRequest
     * @param Laboratory $laboratory
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(LaboratoryRequest $laboratoryRequest, Laboratory $laboratory)
    {
        $updated_data = $laboratoryRequest->validated();
        $laboratory->update($updated_data);
        return redirect()
            ->route('admin.laboratories.index')
            ->with(['message' => __('dashboard.general.success_operation'), 'alert_type' => 'success']);
    }

    /**
     * @param Laboratory $laboratory
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function destroy(Laboratory $laboratory)
    {
        try {
            $laboratory->delete();
            return response(['message' => __('dashboard.general.success_operation'),'status'=>true]);
        } catch (\Exception $exception) {
            return response(['message' => __('dashboard.general.success_operation'),'status'=>false]);
        }
    }


    // change department status
    public function changeStatus($id)
    {
    }

}
