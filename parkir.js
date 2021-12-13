$(document).ready(function(){
    
    $('#keyword').keyup(function(){
        const url = "ajax_get_kendaraan.php";
        const keyword = $(this).val();

        const params = {
            keyword: keyword
        };

        $.get(url, params).done(function(response){
            if (response !== null){
                console.log(response.NamaKendaraan);
                const NamaKendaraan = response.NamaKendaraan;
                $('#informasi').html(NamaKendaraan);
            }
        });
    });

});