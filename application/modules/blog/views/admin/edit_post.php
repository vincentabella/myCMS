<div class="content-wrapper">
    <h3 class="page-heading mb-4">Edit Post &nbsp;&nbsp;<a href="<?php echo site_url('admin/blogs/add');?>" class="btn btn-primary"><i class="fa fa-plus"></i> &nbsp;Add New Post</a></h3>


    <div class="row align-items-start">
            
            <!-- Left Main Content -->
    	    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
               <div class="card-body my-card">
                    <div class="col-md-12 no-padding">
                        <div class="form-group">
                            <label for="title"><h5>Title *</h5></label>
                            <span class="pull-right err-title"></span>
                            <input type="text" class="form-control p-input" value="<?php echo $post[0]->title;?>" name="title" id="title" placeholder="Enter blog post title"><br>
                            <small><strong>Permalink:</strong> <?php echo site_url();?>post/<?php echo $post[0]->id;?>/<?php echo $post[0]->slug;?></small>
                        </div>
                    </div>
                </div>

                <div class="card-body my-card card-spacer">
                    <div class="col-md-12 no-padding">
                        <div class="form-group">
                            <label for="slug"><h5>Content *</h5></label>
                            <span class="pull-right err-content"></span>
                            <textarea class="form-control p-input" name="content" id="content" rows="5" placeholder="Please type the category description">
                                <?php echo stripcslashes($post[0]->content);?>
                            </textarea>
                        </div>
                    </div>
                </div>
            </div>
            

            <!-- Right Side Content -->
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="card-body my-card ">
                    <div class="col-md-12 no-padding">
                        <div class="form-group">
                            <label for="slug"><h5>Publish</h5></label>
                            <p><b>Author:</b> <?php echo $post[0]->first_name; ?> <?php echo $post[0]->last_name; ?></p>
                            <?php echo ($post[0]->status == 'publish') ? '<p><b>Published:</b> '. formatDate($post[0]->date_published).' at '. formatTime($post[0]->date_published) .'</p>' : '<p><b>Date Created:</b> '. formatDate($post[0]->date_created).' at '. formatTime($post[0]->date_created) .'</p>';?>
                            
                            <p>
                                <b>Status:</b> &nbsp;
                                <select id="status" class="form-control" style="display: inline;width: 250px;">
                                    <option value='publish' <?php echo ($post[0]->status == 'publish') ? 'selected':'';?>>Publish</option>
                                    <option value='draft' <?php echo ($post[0]->status == 'draft') ? 'selected':'';?>>Draft</option>
                                    <option value='trash' <?php echo ($post[0]->status == 'trash') ? 'selected':'';?>>Trash</option>
                                </select>

                            </p>
                            <hr>
                           

                            <span class="pull-right">
                                <input type="hidden" value="<?php echo $post[0]->id;?>" id="post-id">
                                <button id="btn-publish" type="button" class="btn btn-primary"><i class="fa fa-check-square-o"></i> Update</button>
                            </span>
                            <center><span class="processing-loader" style="display: none;"><i class="fa fa-spinner fa-spin"></i> Saving...</span>&nbsp;&nbsp;</center>
                        </div>
                    </div>
                </div>

                <div class="card-body my-card card-spacer">
                    <div class="col-md-12 no-padding">
                        <div class="form-group">
                            <label for="slug"><h5>Blog Categories *</h5></label>
                            <div class="form-group" style="height: 120px; overflow-y: scroll;">
                                <ul class="list-group category_list">

                                    <?php echo $form_categories;?>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card-body my-card card-spacer">
                    <div class="col-md-12 no-padding">
                        <div class="form-group">
                            <label for="slug"><h5>Featured Image *</h5></label>
                            <div class="form-group">
                                        <div id="image-styling" style="border: 2px dashed #ccc; padding: 10px;overflow: hidden;" class="col-sm-12">
                                            <center>
                                                <div id="preview">
                                                    <div class="center-cropped"><img src="<?php echo $post[0]->image;?>" class="img-responsive"></div>
                                                </div>
                                               
                                            </center>
                                            <input type="hidden" value="<?php echo $post[0]->image;?>" id="image-url"/>
                                            <input type="hidden" value="<?php echo $post[0]->image_thumb;?>" id="thumb-url"/>
                                        </div>
                                        <br>


                                       <!--dynamic form upload-->
                                        <form id="imageform" method="post" enctype="multipart/form-data" action='<?php echo site_url('blog/admin/blog/upload_image');?>'>
                                            <div class="fileUpload btn btn-primary">
                                                <span id="btn-upload-img"><i class="fa fa-file-image-o"></i>&nbsp; Change Image</span>
                                                <input type="file" class="upload" id="photoimg" name="photoimg" accept='image/*'/>
                                            </div>
                                        </form>
                                        <br/>
                                        <p class="col-blue-grey" style="font-size: 11px;">
                                                Max file size: <b>5MB</b>.<br> 
                                                Min Dimension: <b>200 by 200 pixels</b><br>
                                                <b>JPG</b>, <b>PNG</b>, <b>GIF</b>, <b>BMP</b> or <b>GIF</b> allowed file types. 
                                            </p>
                                        <!--end dynamic form upload-->
                                    </div>
                                    <div class="alert alert-warning alert-dismissible" role="alert" style="font-size: 11px;">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                                        <b>Note:</b> Please click the <b>update</b> button above for the changes to take effect.
                                    </div>
                        </div>
                    </div>
                </div>

            </div>


       
    </div><!--./row-->
</div><!--./content-wrapper-->



<!--START FROALA RICH TEXT EDITOR-->
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/froala_editor.css');?>">
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/froala_style.css');?>">
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/plugins/code_view.css');?>">
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/plugins/image_manager.css');?>">
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/plugins/image.css');?>">
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/plugins/table.css');?>">
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/plugins/video.css');?>">
<link rel="stylesheet" href="<?php echo site_url('assets/plugins/froala-editor/css/codemirror.min.css');?>">

 
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/codemirror.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/xml.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/froala_editor.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/align.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/code_beautifier.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/code_view.min.js');?>"></script>

<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/draggable.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/image.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/image_manager.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/link.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/lists.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/paragraph_format.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/paragraph_style.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/table.min.js');?>"></script>

<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/video.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/url.min.js');?>"></script>
<script type="text/javascript" src="<?php echo site_url('assets/plugins/froala-editor/js/plugins/entities.min.js');?>"></script>

    <script>
        $(function() {
            $('#content').froalaEditor({
                //toolbars
                toolbarButtons: ['bold', 'italic', 'underline', 'strikeThrough', 'fontFamily', 'fontSize', '|', 'color', 'emoticons', 'inlineStyle', 'paragraphStyle', '|', 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', 'quote', 'insertHR', '-', 'insertLink', 'insertImage', 'insertVideo', 'insertFile', 'insertTable', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html'],        
                heightMin: 770,
                heightMax: 2000,
                pastePlain: true
            });

        });
    </script>

 <!--#END# FROALA RICH TEXT EDITOR-->


<!-- JS Lib For AJAX FORM -->
<script src="<?php echo site_url('assets/js/jquery.form.js');?>"></script>






<!-- Le Javascripts -->
<script type="text/javascript">
	$(document).ready(function(){
	
		var base_url = '<?php echo site_url();?>';
        var title, content, image, image_thumb, status;
        var category_selected = []; //selected category array

       

        /**
		 * Controls:: Save Posts
        */
        $('#btn-publish').click(function(e){
       		e.preventDefault();
       		getVariables();
       	});


         /**
         * Method:: Get Form Data
        */
        function getVariables(){
            title = $('#title').val();
            content = $('#content').val();
            image = $('#image-url').val();
            image_thumb = $('#thumb-url').val();
            status = $('#status').val();
            post_id = $('#post-id').val();

            //get category selected
            $('ul.category_list').find("input:checkbox:checked").each(function () {
                category_selected.push($(this).val());
            });

            

            if(title.length == 0){
                $('#title').focus();
                $('#title').css('border', '1px solid red');
            } else if(content.length == 0){
                showMessage('Field Required', 'Please type in your post content.', 'warning');
                $('#content').focus();
            }else if(image.length == 0){
                showMessage('Image Required', 'Please upload a featured image.', 'warning');
            }else if($("ul.category_list input:checkbox:checked").length == 0){
                showMessage("Field Required", "Please select a post category.", "warning");
            }
            else{
                category_selected = JSON.stringify(category_selected); //format category_selected into json string
                savePost();
            }

        }



        /**
         * Method:: Save Blog Post
        */
        function savePost(){
            $(".processing-loader").show(); //show loader
            $("#btn-publish").prop('disabled', true);

            $.ajax({
                type: "POST",
                url: base_url +'blog/admin/blog/update_post',
                dataType: 'json',
                data: {
                    title: title, 
                    content: content, 
                    image: image, 
                    image_thumb: image_thumb, 
                    category_selected: category_selected,
                    status: status,
                    post_id: post_id,
                    form_submit: true
                }, 
                success: function(response){
                    $(".processing-loader").hide(); //hide loader
                    
                    if(response.success == true){
                        showSuccessMessage();
                    }else{
                        alert('Something went wrong. Please try again!');
                        location.reload();
                    }
                    //console.log(response);
                }
            });
        }





        /**
         * Method:: SweetAlert Pop Ups
        */
       	function showSuccessMessage() {
            swal({
                title: "Success!",
                text: "Blog post has been successfully updated.",
                type: "success",
                showCancelButton: false,
                confirmButtonColor: "#4ed1f7",
                confirmButtonText: "OK",
                closeOnConfirm: false
                }, function () {
                    location.reload();
            });
        }

        //general pop up
        function showMessage(title, description, status) {
            swal(title, description, status);
        }


        /**
         * upload featured image  and return the url
         *
         */
        $('#photoimg').on('change', function(){ 
            $("#preview").html('');
            $("#preview").html('<br><br><br><img src="'+ base_url +'assets/images/loader.gif" alt="Uploading...."/><br>Uploading...<br><br><br>');
            $("#imageform").ajaxForm({
                dataType: 'json',
                success: function(response) {
                    $("#image-styling").css('padding', '10');
                    $("#preview").html('<div class="center-cropped"><img src="'+response.image_url +'" class="img-responsive"></div>');
                    $("#btn-upload-img").html('<span class="glyphicon glyphicon-picture" aria-hidden="true"></span>&nbsp; Change Image');
                    $("#image-url").val(response.image_url);
                    $("#thumb-url").val(response.thumb_url);
                }

            }).submit();
                   
        });

       	
	});
</script>

