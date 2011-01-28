Ext.regModel('Slide',{
    fields: ['id','content']
});
var menu = new Ext.data.JsonStore({
    model: 'Slide',
    sorters: 'id',
    data: slides,
});


Ext.setup({
    onReady: function() {
        var carousel = new Ext.Carousel({
            items: slides
        });
        var panel = new Ext.Panel({
            cls: 'cards',
            fullscreen: true,
            layout: {
                type : 'vbox',
                align: 'stretch'
            },
            defaults: {
                flex: 1
            },
            items: [carousel],
        });
    }
});
