const db = require('./connection');

const insert = (req, res) => {
    const userId = req.body.userId;
    const mediaId = req.body.mediaId;
    db.query("CAll sp_WishListInsert(?,?)", [userId, mediaId],  (err, rows)=> {
        if(err)
            return res.status(200).json({ succes: "Not added", err:err })
        else if(rows.affectedRows != 0){
            return res.status(200).json([{ success: 'Added' }]);
        }
    })
}

const getWishListMediaByUserId = (req, res) => {
    const userId = req.body.userId;
    // const mediaId = req.body.mediaId;
    db.query("CAll sp_WishListAndMediaGetByUserId(?)", [userId], (err, rows) => {
        if (err)
            return res.status(200).json({ succes: "Fail to get records, Internal server error", err: err })
        if (rows[0].length == 0)
            return res.status(200).json([{ ThumbnailPath: 'No record found' }]);
        rows[0][0].success = 'Successfully get all records';
        return res.status(200).json(rows[0]);
    })
}

const deleteWishListByUserIdMediaId = (req, res) => {
    const userId = req.body.userId;
    const mediaId = req.body.mediaId;
    db.query('CALL sp_DeleteWishListByUserIdMediaId(?, ? )', [userId, mediaId], (err, rows) => {
        if (err)
            return res.status(200).json([{ success: 'Internal server error ', error: err }])
        else if (rows.affectedRows != 0)
            return res.status(200).json([{ success: 'Removed' }])
        else
            return res.status(200).json([{ success: 'Not removed' }])
    });
}

const checkwishlist = (req, res) => {
    const userId = req.body.userId;
    const mediaId = req.body.mediaId;
    db.query('CALL sp_CheckWishList(?,?)', [userId, mediaId], (err, rows) => {
        if (err)
            return res.status(200).json([{ success: 'Internal server error ', error: err }])
        else if (rows[0].length > 0)
            return res.status(200).json([{ success: 'Yes' }])
        else
            return res.status(200).json([{ success: 'No' }])
    });
}
exports.getWishListMediaByUserId = getWishListMediaByUserId;
exports.insert = insert;
exports.deleteWishListByUserIdMediaId = deleteWishListByUserIdMediaId;
exports.checkwishlist = checkwishlist;