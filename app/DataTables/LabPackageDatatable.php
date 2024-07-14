<?php

namespace App\DataTables;

use App\Laboratory;
use App\LabPackage;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class LabPackageDatatable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        return datatables()
            ->eloquent($query)
            ->editColumn('is_active',function (LabPackage $model){
                return $model->is_active ? __('dashboard.laboratory.active') : __('dashboard.laboratory.not_active');
            })
            ->editColumn('name',function (LabPackage $model){
                return $model->name;
            })
            ->editColumn('investigations',function (LabPackage $model){
                return view('admin.lab-package.components._investigations',compact('model'));
            })
            ->addColumn('action', function (LabPackage $model) {
                return view('admin.lab-package.components._actions', ['model' => $model]);
            })->rawColumns(['map_url','is_active','action']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\App\LaboratoryDatatable $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(LabPackage $model)
    {
        return $model->newQuery();
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->setTableId('packages-table')
            ->columns($this->getColumns())
            ->minifiedAjax()
            ->dom('Bfrtip')
            ->orderBy(1);
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        return [
            Column::make('id')->title('#'),
            Column::make('name')->title(__('dashboard.packages.name')),
            Column::make('price')->title(__('dashboard.packages.price')),
            Column::make('investigations')->title(__('dashboard.packages.investigations')),
            Column::make('is_active')->title(__('dashboard.laboratory.is_active')),
            Column::computed('action')->title(__('dashboard.laboratory.action'))
                ->exportable(false)
                ->printable(false)
                ->addClass('text-center'),
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Laboratory_' . date('YmdHis');
    }
}
