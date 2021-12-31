package com.lmz.controller;

import com.lmz.domain.Goods;
import com.lmz.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class GoodsController {
    @Autowired
    public GoodsService goodsService;

    @RequestMapping("/goodsSearch")
    public String goodsSearch(Model model) {
        List<Goods> goodsList = goodsService.goodsSearch();
        model.addAttribute("goodsList", goodsList);
        return "goods";
    }

    @RequestMapping("/goodsQuery")
    public String goodsQuery(Model model, String query) {
        List<Goods> goodsList = goodsService.goodsQuery(query);
        model.addAttribute("goodsList", goodsList);
        model.addAttribute("queryKeyWord", query);
        return "goods";
    }


    @RequestMapping("/goodsDelete")
    public String goodsDelete(Goods goods) {
        goodsService.goodsDelete(goods);
        return "redirect:/goodsSearch";
    }

    @RequestMapping("/goodsEditPage")
    public String goodsEditPage(Goods goods, Model model) {
        model.addAttribute("goods", goods);
        return "goodsEdit";
    }

    @RequestMapping("/goodsEdit")
    public String goodsEdit(Goods goods, MultipartFile upGoodsFile) throws IOException {
        if (!upGoodsFile.isEmpty()) {
            goods.setG_img(pictureHandle(upGoodsFile));
        }

        goodsService.goodsEdit(goods);
        return "redirect:/goodsSearch";
    }

    @RequestMapping("/goodsAddPage")
    public String goodsAddPage() {
        return "goodsAdd";
    }

    @RequestMapping("/goodsAdd")
    public String goodsAdd(Goods goods, MultipartFile upGoodsFile) throws IOException {
        goods.setG_img(pictureHandle(upGoodsFile));
        goodsService.goodsAdd(goods);
        return "redirect:/goodsSearch";
    }

    @RequestMapping("/picture")//http://127.0.0.1:8080/picture?filename=57594511bbfb482f9ad03f3cf5bed401.jsp
    public void picture(String filename, HttpServletResponse response) throws IOException {
        File file = new File("/picture/" + filename);
        FileInputStream fis = new FileInputStream(file);
        int len;
        byte[] buf = new byte[512];
        ServletOutputStream outputStream = response.getOutputStream();
        response.setContentType("image/jpeg;charset=UTF-8");
        response.setHeader("Content-Disposition", "inline; filename=" + filename);
        while ((len = fis.read(buf)) != -1) {
            outputStream.write(buf, 0, len);
        }
        fis.close();
    }

    private String pictureHandle(MultipartFile upGoodsFile) throws IOException {
        String filename = upGoodsFile.getOriginalFilename();//index.jsp
        String fileType = filename.substring(filename.lastIndexOf(".") + 1);//  jsp
        filename = UUID.randomUUID().toString().replace("-", "") + "." + fileType;//57594511bbfb482f9ad03f3cf5bed401.jsp
        //TODO 部署改这里
        upGoodsFile.transferTo(new File("/picture/" + filename));
        return filename;
    }
}
