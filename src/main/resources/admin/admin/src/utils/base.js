const base = {
    get() {
        return {
            url : "http://localhost:8080/ecommunity/",
            name: "ecommunity",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "物业管理系统"
        } 
    }
}
export default base
