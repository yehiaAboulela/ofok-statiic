<?php

namespace App\DataTables;

use App\Investigation;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Services\DataTable;

class InvestigationDatatable extends DataTable
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
            ->editColumn('is_active', function (Investigation $model) {
                return $model->is_active ? __('dashboard.laboratory.active') : __('dashboard.laboratory.not_active');
            })
            ->editColumn('name', function (Investigation $model) {
                return $model->name;
            })
            ->addColumn('action', function (Investigation $model) {
                return view('admin.investigation.components._actions', ['model' => $model]);
            });
    }

    /**
     * @param Investigation $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Investigation $model)
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
            ->setTableId('investigation-table')
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
            Column::make('name')->title(__('dashboard.investigations.name')),
            Column::make('price')->title(__('dashboard.investigations.price')),
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
        return 'investigation' . date('YmdHis');
    }
}
