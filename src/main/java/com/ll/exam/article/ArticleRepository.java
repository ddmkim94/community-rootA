package com.ll.exam.article;

import com.ll.exam.article.dto.ArticleDto;

import java.util.ArrayList;
import java.util.List;

public class ArticleRepository {

    private static final List<ArticleDto> datum = new ArrayList<>();
    private static long lastId = 0;

    public long write(String title, String body) {
        long id = ++lastId;
        ArticleDto newArticleDto = new ArticleDto(id, title, body);

        datum.add(newArticleDto);
        return id;
    }

    // 전체 글 목록 리턴
    public List<ArticleDto> findAll() {
        return datum;
    }

    public ArticleDto findById(long id) {
        for (ArticleDto articleDto : datum) {
            if(articleDto.getId() == id){
                return articleDto;
            }
        }
        return null;
    }
}
