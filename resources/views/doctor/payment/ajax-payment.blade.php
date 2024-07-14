<div class="row">
    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-primary shadow h-100 py-2">
           <div class="card-body">
               <div class="row no-gutters align-items-center">
                   <div class="col mr-2">
                       <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                        {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','search_30')->first()->custom_lang : $websiteLang->where('lang_key','search_30')->first()->default_lang }}</div>
                       <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $currency->currency_icon }}{{ $payment }}</div>
                   </div>
                   <div class="col-auto">
                       <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                   </div>
               </div>
           </div>
       </div>
   </div>

   <!-- Earnings (Monthly) Card Example -->
   <div class="col-xl-3 col-md-6 mb-4">
       <div class="card border-left-success shadow h-100 py-2">
           <div class="card-body">
               <div class="row no-gutters align-items-center">
                   <div class="col mr-2">
                       <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                           {{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','patient_30')->first()->custom_lang : $websiteLang->where('lang_key','patient_30')->first()->default_lang }}</div>
                       <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $appointment }}</div>
                   </div>

                   <div class="col-auto">
                       <i class="fas fa-calendar fa-2x text-gray-300"></i>
                   </div>
               </div>
           </div>
       </div>
   </div>
</div>
<div class="card shadow mb-4">
   <div class="card-header py-3">
       <h6 class="m-0 font-weight-bold text-primary">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','payment_history')->first()->custom_lang : $websiteLang->where('lang_key','payment_history')->first()->default_lang }}</h6>
   </div>
   <div class="card-body" id="search-particular-appointment">
       <div class="table-responsive">
           <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
               <thead>
                   <tr>
                       <th width="5%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','serial')->first()->custom_lang : $websiteLang->where('lang_key','serial')->first()->default_lang }}</th>
                       <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','name')->first()->custom_lang : $websiteLang->where('lang_key','name')->first()->default_lang }}</th>
                       <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','email')->first()->custom_lang : $websiteLang->where('lang_key','email')->first()->default_lang }}</th>
                       <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','phone')->first()->custom_lang : $websiteLang->where('lang_key','phone')->first()->default_lang }}</th>
                       <th width="15%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','date')->first()->custom_lang : $websiteLang->where('lang_key','date')->first()->default_lang }}</th>
                       <th width="20%">{{ app()->currentLocale() == 'ar' ? $websiteLang->where('lang_key','amount')->first()->custom_lang : $websiteLang->where('lang_key','amount')->first()->default_lang }}</th>
                   </tr>
               </thead>
               <tbody>
                   @foreach ($appointments as $index => $item)
                   <tr>
                       <td>{{ ++$index }}</td>
                       <td>{{ ucfirst($item->user->name) }}</td>
                       <td>{{ $item->user->email }}</td>
                       <td>{{ $item->user->phone }}</td>
                       <td>{{ date('m-d-Y',strtotime($item->date)) }}</td>
                       <td>{{ $currency->currency_icon }}{{ $item->appointment_fee }}</td>

                   </tr>
                   @endforeach

               </tbody>
           </table>
       </div>
   </div>
</div>
