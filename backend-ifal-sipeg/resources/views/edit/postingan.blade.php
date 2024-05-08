@extends('layout.main')
@section('title', 'Postingan')
@section('tablename', 'Postingan')
@section('hrefcreate', '/postingans/create')

@section('content')
    <section class="wrapper">
        <form method="POST" action="/postingans/{{ $post->post_id }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="row">
                {{-- ================================================ --}}
                <div class="row">
                    <div class="col">
                        <h4>Usernames</h4><br>
                        <div class="input-group">
                            <select class="form-select" name="user_id" disabled>
                                <option value="{{ $post->user_id }}">{{ $post->user->username }}</option>
                            </select>
                        </div>
                    </div>
                </div>
                {{-- ================================================ --}}
                <div class="row">
                    <div class="col">
                        <h4>Post</h4><br>
                        <div class="input-group">
                            <input type="file" name="url_content" accept="image/jpg/jpeg/png">
                            <br>
                            <p>kosongkan jika tidak ingin diubah</p>
                        </div>
                    </div>
                </div>
                {{-- ================================================ --}}
                <div class="row">
                    <div class="col">
                        <div class="input-group">
                            <input type="text" placeholder="Description" name="text_content"
                                value="{{ $post->text_content }}">
                        </div>
                    </div>
                </div>
            </div>
            {{-- ================================================ --}}
            <div class="row">
                <div class="input-group input-group-icon">
                    <input type="submit" class="mysubmitBtn" placeholder="">
                </div>
            </div>
        </form>
    </section>

@endsection()
