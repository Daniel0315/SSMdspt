package com.neuedu.dto;

import org.springframework.web.multipart.MultipartFile;

public class GoodsDto {
    private Integer gid;            /**商品id*/
    private String gname;           /**商品名称*/
    private Double gprice;          /**商品单价*/
    private Integer grepertory;     /**库存*/
    private Integer gsalesvolume;   /**销售量*/
    private String gstandard;       /**规格*/
    private MultipartFile gimg;     /**图片路径*/
    private String gremarks;        /**备注*/
    private Integer cid;             /**类型号*/

    public GoodsDto() {
    }

    public GoodsDto(Integer gid, String gname, Double gprice, Integer grepertory, Integer gsalesvolume, String gstandard, MultipartFile gimg, String gremarks, Integer cid) {
        this.gid = gid;
        this.gname = gname;
        this.gprice = gprice;
        this.grepertory = grepertory;
        this.gsalesvolume = gsalesvolume;
        this.gstandard = gstandard;
        this.gimg = gimg;
        this.gremarks = gremarks;
        this.cid = cid;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Double getGprice() {
        return gprice;
    }

    public void setGprice(Double gprice) {
        this.gprice = gprice;
    }

    public Integer getGrepertory() {
        return grepertory;
    }

    public void setGrepertory(Integer grepertory) {
        this.grepertory = grepertory;
    }

    public Integer getGsalesvolume() {
        return gsalesvolume;
    }

    public void setGsalesvolume(Integer gsalesvolume) {
        this.gsalesvolume = gsalesvolume;
    }

    public String getGstandard() {
        return gstandard;
    }

    public void setGstandard(String gstandard) {
        this.gstandard = gstandard;
    }

    public MultipartFile getGimg() {
        return gimg;
    }

    public void setGimg(MultipartFile gimg) {
        this.gimg = gimg;
    }

    public String getGremarks() {
        return gremarks;
    }

    public void setGremarks(String gremarks) {
        this.gremarks = gremarks;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    @Override
    public String toString() {
        return "GoodsDto{" +
                "gid=" + gid +
                ", gname='" + gname + '\'' +
                ", gprice=" + gprice +
                ", grepertory=" + grepertory +
                ", gsalesvolume=" + gsalesvolume +
                ", gstandard='" + gstandard + '\'' +
                ", gimg=" + gimg +
                ", gremarks='" + gremarks + '\'' +
                ", cid=" + cid +
                '}';
    }
}
