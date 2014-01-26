package com.springhibernate.integration.tennisParser;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: dburban
 * Date: 8/17/11
 * Time: 7:57 PM
 * To change this template use File | Settings | File Templates.
 */
public interface RacquetReader {
    List<String> getAllRacquets(String url);
}
