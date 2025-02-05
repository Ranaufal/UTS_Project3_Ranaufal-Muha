@extends('layout.main')
@section('title', 'Jabatan')
@section('tablename', 'Jabatan')
@section('hrefcreate', '#')

@section('content')
    <section class="wrapper">
        <form method="POST" action="/jabatans">
            @csrf
            <div class="row">
                <div class="input-group input-group-icon">
                    <input type="text" placeholder="Nama Jabatan" name="nama_jabatan">
                    <div class="input-icon">
                        <i class="fa fa-user"></i>
                    </div>
                </div>
                <div class="input-group input-group-icon">
                    <input type="text" placeholder="Deskripsi Jabatan" name="deskripsi">
                    <div class="input-icon">
                        <i class="fa fa-envelope"></i>
                    </div>
                </div>
                <div class="input-group input-group-icon">
                    <input type="number" placeholder="Gaji Pokok" name="gaji_pokok">
                    <div class="input-icon">
                        <i class="fa fa-key"></i>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="input-group input-group-icon">
                    <input type="submit" class="mysubmitBtn" placeholder="">
                </div>
            </div>
        </form>
    </section>

@endsection()
