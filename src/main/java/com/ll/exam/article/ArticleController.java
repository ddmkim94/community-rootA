package com.ll.exam.article;

import com.ll.exam.Rq;

public class ArticleController {

    private final ArticleService articleService;

    public ArticleController() {
        articleService = new ArticleService();
    }

    public void showList(Rq rq) {
        rq.setAttr("articles", articleService.findAll());
        rq.view("usr/article/list");
    }

    public void showWrite(Rq rq) {
        rq.view("usr/article/write");
    }

    public void doWrite(Rq rq) {
        String title = rq.getParam("title", "");
        String body = rq.getParam("body", "");

        long id = articleService.write(title, body);
        rq.appendBody("%d번 게시물이 생성 되었습니다.".formatted(id));
    }

    public void showDetail(Rq rq) {
        rq.setAttr("article", articleService.findById(1));
        rq.view("usr/article/detail");
    }
}
