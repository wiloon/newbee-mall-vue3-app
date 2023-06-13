<!--
 * 严肃声明：
 * 开源版本请务必保留此注释头信息，若删除我方将保留所有法律责任追究！
 * 本系统已申请软件著作权，受国家版权局知识产权以及国家计算机软件著作权保护！
 * 可正常分享和学习源码，不得用于违法犯罪活动，违者必究！
 * Copyright (c) 2020 陈尼克 all rights reserved.
 * 版权所有，侵权必究！
 *-->
 <template>
  <div class="about">
    <s-header :name="'关于店铺'"></s-header>
    <div class="about-body">
      <div>
         <div>店主名：{{state.shopOwner}}</div>
        <div>店铺名：{{state.shopName}}</div>
        <div>店铺地址：{{state.shopAddress}}</div>
          <br/>
        <div>店铺二维码：<QrcodeVue :value="state.shopAddress" size="75" level="H" /></div>
      </div>
    </div>
  </div>
</template>

<script setup>
import sHeader from '@/components/SimpleHeader.vue'
import {onMounted, reactive} from "vue";
import QrcodeVue from "qrcode.vue";

const state = reactive({
    shopOwner:'',
    shopName:'',
    shopAddress: '',
})

onMounted(async () => {
    state.shopOwner = localStorage.getItem("shopowner")
    state.shopId= localStorage.getItem("shop")
    state.shopName= localStorage.getItem("shopname")
    state.shopAddress = "https://dbyhh.ehoneycomb.net/#/home?shop="+state.shopId
})
</script>

<style lang="less" scoped>
  .about {
    box-sizing: border-box;
    padding: 20px;
    .intro-img {
      width: 100%;
    }
    .about-body {
      font-size: 16px;
      a {
        color: #007fff;
      }
    }
  }
</style>
