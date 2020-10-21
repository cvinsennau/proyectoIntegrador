let controller = {
    detail: function(req,res){
        return res.render('detailPost');
    },
    add: function(req,res){
        return res.render('addPost');
    },
    search: function(req,res){
        return res.render('searchResult');
    },
}
module.exports = controller;
