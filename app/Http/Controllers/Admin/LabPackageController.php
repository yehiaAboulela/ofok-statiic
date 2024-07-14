<?php

namespace App\Http\Controllers\Admin;

use App\DataTables\LabPackageDatatable;
use App\Http\Controllers\Controller;
use App\Http\Requests\LabPackage\LabPackageRequest;
use App\Investigation;
use App\Laboratory;
use App\LabPackage;

class LabPackageController extends Controller
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
    public function index(LabPackageDatatable $datatable)
    {
        return $datatable->render('admin.lab-package.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function create()
    {
        $investigations = Investigation::all();
        $laboratories = Laboratory::all();
        return view('admin.lab-package.create', ['investigations' => $investigations, 'laboratories' => $laboratories]);
    }

    /**
     * @param LabPackageRequest $labPackageRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(LabPackageRequest $labPackageRequest)
    {
        // project demo mode check
        LabPackage::create($labPackageRequest->validated());
        return redirect()
            ->route('admin.packages.index')
            ->with(['message' => __('dashboard.general.success_operation'), 'alert_type' => 'success']);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Department $department
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function edit(LabPackage $package)
    {
        $investigations = Investigation::all();
        $laboratories = Laboratory::all();
        return view('admin.lab-package.edit', ['labPackage' => $package, 'investigations' => $investigations, 'laboratories' => $laboratories]);
    }

    /**
     * @param LabPackageRequest $labPackageRequest
     * @param Laboratory $laboratory
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(LabPackageRequest $labPackageRequest, LabPackage $package)
    {
        $updated_data = $labPackageRequest->validated();
        $package->update($updated_data);
        return redirect()
            ->route('admin.packages.index')
            ->with(['message' => __('dashboard.general.success_operation'), 'alert_type' => 'success']);
    }

    /**
     * @param Laboratory $laboratory
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function destroy(LabPackage $package)
    {
        try {
            $package->delete();
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
