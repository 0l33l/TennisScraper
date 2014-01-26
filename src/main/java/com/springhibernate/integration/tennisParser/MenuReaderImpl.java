package com.springhibernate.integration.tennisParser;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: dburban
 * Date: 8/17/11
 * Time: 7:42 PM
 */
@Service
public class MenuReaderImpl implements MenuReader {

    public List<String> getAllCategories(String url) {
        ArrayList<String> returnLinks = new ArrayList<String>();

        Document doc = null;
        try {
            doc = Jsoup.connect(url).timeout(6000).get();
        } catch (IOException e) {
            e.printStackTrace();
        }

        Elements elements = doc.getElementsByClass("typ_nav");

        for (Element row : elements.select("li")) {
            Elements links = row.getElementsByTag("a");
            for (Element link : links) {
                String linkHref = link.attr("href");
                returnLinks.add(linkHref);
            }
        }

        return returnLinks;
    }

}
