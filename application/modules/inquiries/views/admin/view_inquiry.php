<div class="content-wrapper">
    <h3 class="page-heading mb-4">View Inquiries</h3>

    <div class="row">
	    <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-body">
                  	<h5 class="card-title mb-4">Message Details</h5>
                    <p><b>Date Sent:</b> <?php echo formatDate($inquiry->date_sent).' '.formatTime($inquiry->date_sent);?></p>
                    <p><b>Subject:</b> <?php echo $inquiry->subject;?></p>
                    <p><b>Message:</b></p>
                    <p><?php echo $inquiry->message;?></p>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title mb-4">Sender Information</h5>
                    <p><?php echo $inquiry->name;?></p>
                    <p><?php echo $inquiry->contact;?></p>
                    <p><?php echo $inquiry->email;?></p>
                </div>
            </div>
        </div>

    </div><!--./row-->
</div><!--./content-wrapper-->




<!-- Le Javascripts -->
<script type="text/javascript">
    $(document).ready(function(){

        var base_url = '<?php echo site_url();?>';
      



        /**
         * Sweet Alert - Pop Up 
         *
        */
        function showConfirmMessage(page_id) {
            swal({
                title: "Are you sure?",
                text: "This page will be move to trash.",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, Move it!",
                closeOnConfirm: false
            }, function () {
                deletePage(page_id);
            });
        }

        function showDeleteSuccess() {
            swal({
                title: "Success!",
                text: "Page has been successfully moved to trash.",
                type: "success",
                showCancelButton: false,
                confirmButtonColor: "#4ed1f7",
                confirmButtonText: "OK",
                closeOnConfirm: false
            }, function () {
                location.reload(); //reload page after submitted
            });
        }


        //delete permanently
        function showConfirmDeletePermanently(page_id) {
            swal({
                title: "Are you sure?",
                text: "This page will be deleted permanently.",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, delete it!",
                closeOnConfirm: false
            }, function () {
                deletePagePermanently(page_id);
            });
        }

        function showDeletePermanentlySuccess() {
            swal({
                title: "Success!",
                text: "Page has been successfully deleted.",
                type: "success",
                showCancelButton: false,
                confirmButtonColor: "#4ed1f7",
                confirmButtonText: "OK",
                closeOnConfirm: false
            }, function () {
                location.href = base_url +'admin/pages';
            });
        }

    });
</script>