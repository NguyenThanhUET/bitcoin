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
            var parent  =   $(this).parent('tr.tr-record');
            jConfirm('Do you want to approved?','Confirm',function(r){
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



