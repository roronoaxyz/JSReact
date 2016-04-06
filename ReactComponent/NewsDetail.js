/**
 * React Native News App
 * https://github.com/tabalt/ReactNativeNews
 */
'use strict';

var React = require('react-native');

var {
    Image,
    StyleSheet,
    Text,
    View,
    ScrollView,
} = React;

var NewsDetail = React.createClass({
    render : function() {
        var newsTitle = this.props.title;
        var newsContent = this.props.body;
        return (
            <ScrollView style={styles.pageContainer}>
                <View style={styles.container}>
                    <Text style={styles.newsTitle}>{newsTitle}</Text>
                </View>

                <View style={styles.container}>
                    <Text style={styles.newsContent}>{newsContent}</Text>
                </View>
            </ScrollView>
        );
    }
});

var styles = StyleSheet.create({
    pageContainer: {
        
    },
    container: {
        flex: 1,
        flexDirection : 'row',
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#ffffff',
    },
    newsTitle : {
        color : '#4f4f4f',
        fontSize : 18,
        textAlign : 'left',
        marginTop : 10,
        marginBottom : 10,
        fontWeight : 'bold'
    },
    newsPic : {
        width : 180,
        height : 120,
        margin: 10,
    },
    newsContent : {
        margin : 10,
        marginTop : 10,
        flex: 1,
        color : '#4f4f4f',
        fontSize : 16,
        textAlign : 'left',
        writingDirection : 'ltr',
        lineHeight : 20
    },
});

module.exports = NewsDetail;

React.AppRegistry.registerComponent('NewsDetail', () => NewsDetail);

