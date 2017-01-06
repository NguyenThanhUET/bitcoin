$(document).ready(function() {
    try {
        initialize();
        initEvents();
    } catch (e) {
        alert('ready' + e.message);
    }
});
/**
 * initialize
 *
 * @author		:	viettd - 2016/05/09 - create
 * @param		:	null
 * @return		:	null
 * @access		:	public
 * @see			:
 */
function initialize() {
    try {
        // focus into first item

    } catch (e) {
        alert('initialize' + e.message);
    }
}
/**
 * initEvents
 *
 * @author		:	hiepnv - 2016/05/09 - create
 * @author		:
 * @params		:	null
 * @return		:	null
 * @access		:	public
 * @see			:
 */
function initEvents() {
    try {
        $(document).on('click','.view-image-btn',function(){
            var parent = $(this).parents('td.image-view');
            var modal = $(parent).find('.myModal');
            var img = $(parent).find('.myImg');
            var modalImg = $(parent).find(".img01");
            var captionText = $(parent).find(".caption");
            $(modal).css('display' , "block");
            $(modalImg).attr('src',$(img).attr('src'));
            //captionText.innerHTML = this.alt;
            // Get the <span> element that closes the modal
            var span = $(parent).find("close");
        });
        $(document).on('click','span.close',function(){
            var parent = $(this).parents('td.image-view');
            var modal = $(parent).find('.myModal');
            $(modal).css('display' , "none");
        });
        $(document).on('click','.confirm-btn',function(){
            var parent  =   $(this).parents('tr.tr-record');
            jConfirm('Do you want to approve ?','Confirm',function(r){
                if(r){
                    confirmTrans($(parent).attr('record-id'),function(){
                        $(parent).remove();
                    });
                }
            });
        });
    } catch (e) {
        alert('initEvents' + e.message);
    }
}
function confirmTrans(id, callback){
    var data    =   {};
    data['id'] = id;
    console.log(data);
    $.ajax({
        type        :   'POST',
        url         :   '/backend/transaction/waitingapproved',
        dataType    :   'json',
        loading     :   true,
        data        :   data,
        success: function(res) {
            switch (res['status']){
                //not perssion
                case PE:
                    jMessage(23);
                    break;
                // success
                case 1:
                    if(callback){

                        callback();
                    }
                    break;
                // error
                case 0:
                    if(typeof res['error'] != 'undefined'){
                        processError2(res['error']);
                    }
                    break;
                // Exception
                case EX:
                    jError(res['Exception']);
                    break;
                default:
                    break;
            }
        }
    });
}


