let controller = {
    myProfile: function(req,res){
        return res.render('myProfile');
    },
    userDetail: function(req,res){
        return res.render('detailUser');
    },
}
module.exports = controller;
