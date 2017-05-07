@extends('rapyd::demo.demo')

@section('title','DataEdit')

@section('body')

    <h1>DataEdit</h1>
    <p>

        {!! $edit !!}
        {!! Documenter::showMethod("Zofe\\Rapyd\\Demo\\DemoController", "anyEdit") !!}
        {!! Documenter::showCode("edit2.blade.php") !!}
    </p>
@stop
