@component('mail::message')


Hi {{$data['friend_name']}}, {{$data['your_name']}}({{$data['your_email']}})
has refered you this job.

@component('mail::button', ['url' => $data['jobUrl']])
View Job
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
