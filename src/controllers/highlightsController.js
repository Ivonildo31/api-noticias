const newsService = require('../services/newsService')();

const dbNews = require("../../data/db.json");

module.exports = () => {
    var highlightsController = new Object();

    highlightsController.getList = (req, res) => {

        newsService.getHighlights()
            .then(o => {
                return res.json(o);
            })
            .catch(err => {
                throw err;
            });
    }

    return highlightsController;
};
