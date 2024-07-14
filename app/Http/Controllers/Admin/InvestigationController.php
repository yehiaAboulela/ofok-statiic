<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\InvestigationDatatable;
use App\Http\Controllers\Controller;
use App\Http\Requests\Investigation\InvestigationRequest;
use App\Investigation;
use App\Laboratory;

class InvestigationController extends Controller
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
    public function index(InvestigationDatatable $datatable)
    {
        return $datatable->render('admin.investigation.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.investigation.create');
    }

    /**
     * @param InvestigationRequest $investigationRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(InvestigationRequest $investigationRequest)
    {
        Investigation::create($investigationRequest->validated());
        return redirect()
            ->route('admin.investigations.index')
            ->with(['message' => __('dashboard.general.success_operation'), 'alert_type' => 'success']);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Department $department
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function edit(Investigation $investigation)
    {
        return view('admin.investigation.edit', compact('investigation'));
    }

    /**
     * @param InvestigationRequest $investigationRequest
     * @param Laboratory $laboratory
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(InvestigationRequest $investigationRequest, Investigation $investigation)
    {
        $updated_data = $investigationRequest->validated();
        $investigation->update($updated_data);
        return redirect()
            ->route('admin.investigations.index')
            ->with(['message' => __('dashboard.general.success_operation'), 'alert_type' => 'success']);
    }

    /**
     * @param Investigation $investigation
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function destroy(Investigation $investigation)
    {
        try {
            $investigation->delete();
            return response(['message' => __('dashboard.general.success_operation'), 'status' => true]);
        } catch (\Exception $exception) {
            return response(['message' => __('dashboard.general.success_operation'), 'status' => false]);
        }
    }


    // change department status
    public function changeStatus($id)
    {
    }

}
