<?php

namespace App\DataTables;

use App\Laboratory;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class LaboratoryDatatable extends DataTable
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
            ->editColumn('is_active',function (Laboratory $model){
                return $model->is_active ? __('dashboard.laboratory.active') : __('dashboard.laboratory.not_active');
            })
            ->editColumn('name',function (Laboratory $model){
                return $model->name;
            })
            ->editColumn('map_url',function (Laboratory $model){
                return '<a href="'.$model->map_url.'" class="btn btn-sm btn-info"><i class="fa fa-map-marked"></i></a>';
            })
            ->addColumn('action', function (Laboratory $model) {
                return view('admin.laboratory.components._actions', ['model' => $model]);
            })->rawColumns(['map_url','is_active','action']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\App\LaboratoryDatatable $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Laboratory $model)
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
            ->setTableId('laboratory_datatable-table')
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
            Column::make('name')->title(__('dashboard.laboratory.name')),
            Column::make('phone')->title(__('dashboard.laboratory.phone')),
            Column::make('address')->title(__('dashboard.laboratory.address')),
            Column::make('working_time')->title(__('dashboard.laboratory.working_time')),
            Column::make('map_url')->title(__('dashboard.laboratory.map_url')),
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
