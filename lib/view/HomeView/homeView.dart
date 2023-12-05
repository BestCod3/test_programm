import 'dart:developer';
import 'dart:convert';
import 'dart:ffi';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_programm/bottomBar/bottomController.dart';
import 'package:test_programm/view/AsianKitchen/asian_kitchen.dart';
import '../../appBar/customAppBar.dart';
import '../../bottomBar/bottomBar.dart';
import '../../widgets/categories.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  BottomController _bottomController = Get.put(BottomController());

  String homeText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: 80),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Categories(
                onPressed: () {},
                text: "Пекарни\nи кондитерские",
                urlImage:
                    'https://lh3.googleusercontent.com/fife/APg5EOZwXlSvVv7qAPzCjMLni5B6UOj2rqnQxbVcUixlPdm0nDPChMh8SmfbyhGOQXXTw9eQlySJ6XO34ix7DimTqUDcnB6MRb_GS6O8z4lD8vyM3h67V5rgFyFgeJ5anUUivDGRJrRCPvsmvSauRFvzv9QwQR3BfMQaECH70N5SW2oiFGS-MJBhuoAR3-kEVBgpAel2P4tfdNcD0PBHe-P9xgsl-fITrk9XWimTNFQA_zManQaDtaPT4w8lVS-jqwWXizGBJ31kCn_nxV6D4K3klF5DCKaK63JnTAx4AiwvMj88Vp2-BhK3WgEwJsW8cDCaapvV1-XFb3SFARRKfrLesXiJCVq6IuEllQzkcU81D-BFYIxLc_tfw9d7NA5QR2s_JnOtd1VK2plQfo_D7JEQDoXCmeMM-6L8C9D2b5YtUoc73cv7KUrYuZCP9jymc21HgPSiTXpmFo7kLhrCLn3ePivaDoGIL7xzaQEKRnXX5tCOeHFlIhq78TeZwIWIVWxSwaWs65RCVo98LuZiOfCcu3u69hKVme5bHVHQNpolqHw6RgXInDcSO-1c-HY4TAyaPhtpLWxE5bd_XwGnso6YEdHg3kFqANZwXEv9hb7DY39CasubzAwYnCsOOq07b0uFF1jRAvgjejxJJcXiE88XIs9QpwwaQCrtGuHbmDIzbGlx17a6-XommGe2cobC4MZ9jqfW6lCOi22tAix7g5J3194RHXyb1cVs5Pt-U0l88Z0WAX_rLyxogDIFVQc0fhm7A7BZOrDSAaH-Ii8ZEOe3IGtz4IbVYRmMUWBKM5FXrcKBpxNenheeBj3ifFYtJHsXdW_eK3JRsHGY4IZPODRF16EqiemMQKHNo3IRI73QsKAIcgsHd6SZJrh9OxDbRNHC6ZXVuIYqzFf_UVzLLmCx-9xWfXVBwN5sMh38u2Yq1jPNv2VQqQgzCrQTtvheMjo28Z00rc6JQ7KFo-3LsG45dXR74B6dprRwYZb1HK9XMzo2hYh2dwU0VSOkO4DIjzoeAhstr37PLpFxUYmuQi8HTxm_SOdov2LQs_ZS2gLk7WqHIQjALu67M6MtifU0aGivw_oV24I8CdBpP_4JsupRFOTrOKlcjPtYYJGCPjXTzsF2gbc3N_g-f45lS1FKltDWY1DNnc2sE4pmlPaeQG52EfLFiw6tdAZfzkuFBbCED4-GMUNIhhnwYl3lO1EL1NMt7W09fC6pdebC5JqCtnKwrhPsQmVaEIc18oOlVsK3ZHJNacu7MzsB9moZgZDb4IXFm71-ad7Vdu3l5eyN-533i1U7ikpbc8v9JpShD9Exd6QHyPWcEaVk-TuAwz4509t1ioDTEp_rSVDhxli2k0IzhODBtb6ChBMmhHP_MO8NdTvU_y5hKpg7cj3YgJ26aizvQi0Qq5koz5fVEFBtaXXw5ok_rwFqagW_LmKGIRqyydVb2BRILFv6D3bp-NC1hBnvYUS4VGXD4YGRVP3eK-dQ4kDVWd1RZ5gllZHgA8OTuzGgxGOGmGaOmkiSJHpx2Xt1XU8r86iHo6EzjyibiQxGsBfNrhtHXf5IxyOwNR5P76lhdTB_TOc9t8MQ0Pc86wZWye8F-9W7tDZ_GsyPWUYzlfWU174gOObTmnKcWY5IfeEJr073IB-l=w1366-h617'),
            Categories(
                onPressed: () {},
                text: "Фастфуд",
                urlImage:
                    'https://lh3.googleusercontent.com/fife/APg5EObBNnVU_jTRbXA9hlsqmsxvccjk5JSwz4YfNf3CVqoCTCujOwT8ju5JApYB8FcX6DVvvp92j55kTIhjkAUOMvEbjOrnkjJYMLi-oOTR16z3IIcFM1TFkzLaieywQ8JJvlZcfMwt9oGmkYNzcEuLa6bppj_tP8c7eBHxqhdT6jCSnpKCvLdBwvi8Rwhv5CHtYW34vRUx6-C8DAHmhginFhaBf2tsoMLKMhQv64BFm84h8mpS7Ufs2T6OH81orV5LoWsxeHNVgfCb057b7Wch3c4ILRcn-n0y_zTNnypNTc_WTHkfAS1sfUNkDtEhSnoQ9F75U5nZjuOfCGVqLRmUF2gfr5964pugGS8tkI8nfNYZmmFnQwM1P44kaFrAbEU7ccKKuUk3ZDyqb5I4bSWYrcwiJg1F0fle2B1lYhpeRPjRuEoFIBbzyowXu-taDXY9Jlh5iz9uBkF33XDwAIu0TfaU-WnsuN57tFSq9dLVHnBhWXPcgq0TJMKLBjZtJ9dW2Xgchd-HITt0xgLAeFB1ItL36aGXrAzZwXlASk04GqU-pyXm8zrBeZGvIaEs63nKj9DUEAEScm6v0gm8RbXJuaqpxb8-mIDW8xvPhXGnkNR5i7aW1pxAeJkyfLi28ZFd7ht96MRdxuYQ5CxGyzezXkPcj6NV8UuP7mKwiIsI10tNvmTj8zjevyv5Vqtu-mdYzmKgTcCwjZrIEXF-94olaEy7bhPKqBWiHmjeCslaOt9omc9HaXvESA3QJyyEviZdbcjfZ0-KNNG-Bq_gbVGZWBhfi9ieOYASaWVwGCUAYYusUNBL1cGrT0be6R1-ndt7IYU0uBQCE-8Nq5JP7_UHZ1cv_aGQP9vYVRjN5qqWZ3g8lYzFjzyPWR4f5daxr8Ri20qYfl1tbmmHxz-UUiZ0j6JdHskAao5M30sa3A3wtu8YoJ8cMkzHVgLFKr_-wj2Pw38tjCbo97_7pymOR2SBGi6ikQiVntvlRo3JwQvoswE1VY9Jfn_bkvLYgdhCpQTyf0gLIcUhpFzIGnsJyRV-tyxafVOWdqVe0OU3kioFukZzgdOBo0CUMVM1hy6x_VenBGrAY85i01swYOKqBoyX1YmHEVffEw1egxG8PPMOaQDQaNaoZM-S3hu_6C3qbJrnJ_EJ4mh8oZUnU9roqPRgvk2XOcDeygBc02OrNj-gxeLwgzQl_NXL5J21-wFL2bALeedcF014OJIYlMIi5p-ZIBlFHIGi-ODVn9odIorlfV12DXjoWPoHXovaBmB3QN8WOyJ7vKthn85aju2Siv0goCjRkHrufLjds9dw4E1HP1KuDKBGFD4tENzNleD8qugdnvrGzTotuPv4ERrKYdABmIDo06MYU9iTrKFkBQUNtPRc9NGslx-jsQKRSb8-FXMJ-6yDVh_gsoNVzbbaO7WzIBmctqIwAnDWRjq3j9bx2AOCWpTsdGFoiKUZJPOl_unR51qMticVfrt1KjUkcMwpED2l7XtWMwzBxg01fcinuejSer5vEv_s9oXMwyuF4oKtOZSZQdx-wpHCtdcmf6OHeFNqjvAXKzCWNdX4kLVcAV5YzorDOKSXBVRXVunVqUMq7Nko2ZcI5upwdZ-3sbU-ppxIT1r8bub96rQ-FzDqkwBy98OtmKGn=w1366-h617'),
            Categories(
                onPressed: () {
                  Get.to(AsianKitchen());
                },
                text: "Азиатская кухня",
                urlImage:
                    'https://lh3.googleusercontent.com/fife/APg5EOazehR4FoGGQc58Gll7A0LbhlaFKaWZYDtYns2icY2UW7rqPSiZWfW5GqsapOkA7IcjPyImt84b9RQdknKCMXrCoTcYHX_p6SObcDxUL691usexrmSPJWK68NZMZ5downCsE881bBTioNF_ggP-mDH2xeU8RyLYABbckBd_AxJycABkPeLvshdAiAOIafXA9xj2tvFGB17GJ-tF-orcavB79aE9GdbfrLuoomWfj-bcoMeYAYY3li7U3OJq-MATSpv5dDwy-7ZalGwOb9ns-KEACJOi8A3FrGuym5GA68FDTCh4AFJ5zI0m2_1P7OAuiLqHRfjwrFEBITKGSuJjCsjAfLLGRMXjwMep0n3_dTrqv5h5f2Pb6M5oio_Z9ONecBlcOSB7Ny9cSKpvYeLnNHSti4guYUH3lulKgOhpcmjaa63TLFzWIr84jt4NTYc-S3HPUt_4WrAbVXzSCaOSSminySQUlTn3U6Osz9zqfDP7kdTZZAeRDOdMDeoffHwyWeQevYygR1t62QoV42ZLn_UPD1AOQJBi105UaJ3LBkT6_pmIFx8Pzp-TmmBrd37EQQXM10HbVPKaLDPOmTTtrEFCe2KnBJ17a0LyN0QxJOvYshWESquAjkkVUVDQFga6u3qabDjU0BBTK2wylf-zDUlsC8mxETyH6uKuVLFtzr0D7CvY4cDsMQPwPYXWATXcU9ETniYxZdzHaeISuUIF9eEDDtxOgpFRW2GfaDTWWX7cTjUJ8L1h5EyWoczELDmRoMB-mPj2vHgl5Fgbe4D6-OJ7V4b6BmLDM9RnP7BYropTXWooyEcFNWX02d52J57a2yc3gACtvBuLsKUewdutRbsi-6oQkVSywUBSqTAYhERnCJ0g9gyyZMEPVYqwDgvmPqH7Im_Y4QuCiiCDMRI_bdxvAbqKSB5ZStBc3nEH7Bh5dY9iUPn6YjvuHgrgCIUAx2jh8FVKKZNT6dEioqvTnYKs7AHku0STmKM4QDXsEwCnEPtdbIKFvUGKmt_OGf_D-e2ZNpuFgUZhSEUCr7w6G9Ea6pI72WEjHNFLHSju8v50vWqcnk2tmmDTdZUGPmtHyFSe9nJtkK6Yb5FzS9QRo2c_8E26l9Dl6fKgB6caHCXa71pwfkkRCuujFJHe6Itdx4elpyV4Niebw5oIL1_b2n_BGfvuUUvrTpTSAtWJ0qwwUlTqC5zggPHHJMvYy8Z0pnohF6nGsu2a7kNqJHqhQhIrGWsU91AhCZE8TbMeYDn6ednYuGzueczMy_6VjJN4Z1Q8ib4xwsDfQsd7zQ3JPo35JvLzkS5MzS6MJ5a8il-NkdidDvwMzsigVACRblhNDiCJeI-HQJBHvXUBAzXbjFpUaC8TY3iVYu7q2VH8yaG8Lc6JYNk6C4rEv4FwRvDKdiqfw0AIsF0w0cvTeM8S4f2bL_LBwyv-FCAb_HtO8ZyBYovcxYMrWJNowIVJi3lUkmjltDPT8x_IsETrfe4n_hIubt4aWsefl0ffJ7gg-wOK35khfgyMpMy6StqvNngTRbF92Y_8gdC9pk0cAVCLA1vFRSPuZ6gYOSs94P3arZj7sDoUbv2ezOmazXpcUYckos_X70rWhm_msa3wYTLXFh2sFSwn-Wu4pRm6pKDVuJKINilX2IPy=w1366-h617'),
            Categories(
                onPressed: () {},
                text: "Супы",
                urlImage:
                    'https://lh3.googleusercontent.com/fife/APg5EOYkl52vweri_LftXhwkPxs3KpAnuvGK3D47CgPX84NJtezEi8qE2GGEfYjDHG5QPlqP3a5NnlcoSw0o9XvRzkQytS3G20mqtirOga1ETYZuOFshsxGVH6P2UIr4ZeeCMTzniV6jE2JDbL2TrrEqwypyWLHsKU4IRUhIKeDetZ99n3gfPW9h1Uio67HCxmYPRuiYoZxH2wZ8xEec__-HxOwWvWhb1Yae3fYmmVWCSY7E75H2r-lXPk6NcpWn_zXRer1ksviJSLEiPBHngkGodpcYC4EwjVVYmsUFfeEZuS55w41JlXeLCaxbpMUNU4ThHPso7Cl-WrgBFKLECCXhGVNDPX66mcDu5EFC-vNGzLTfjoFcSOP3-qEr5HYvwC3l8ml8qdkBJ3jN9nyG9lfcLRjryQi-FkJqyhzZlL0o_UCCc0FIMepRfKGRDUaxNcGsYoLN9yjFhpcypA1yZbICt4DOfGLM-IK5RKlgZ23Au-jMxqtiAg-MBbtodtJlCUEaDGVhnF84W4iUyiL7now9wPzOfNS7fis89jgEot5sT-Q3FJy2T9RzBuh3R3KnGGyOx88tYtkpsZq4Sy-tWF_H8VfyaISYOBJx204XpEW0Z0mxuIqGN57Mku49Pzq_I7BvztHa_1Onq1jBWNcW1irtjfQWdzIwEz0se8zCq-aOp0CGp4neExmhfuh4LZ16Yb55IK6e2cMQj4AUahb1ze6jQJfRllZDdXwUNZMyErBswimfmuuoeF47gm2IvBGP2cbozdZLlBYwMQUbuiab96yA7rF__2ghfqyy5mI5CB5rnKgPPkMFw-fKFV7IvmPVk-Fb2K8DCBVQSeAY0njuvebCN18D_h10E0YRXmAwWFdhk0HWTVILUpF9COS-kbLmAzZ7zOY3ZW_5bA8chl3E8RZ1Vi-e1izPTRE2s4kH7SZvn9VepHita0Uhix-03hSHZFpxYC0eZP0tSaXaUUxmzNTAT8Q-ZyVIc3NMUtqu1ZIaC1Z6hDI4AqaM1Yxgf7whXYS9LfKfyvKSW8EBTmgCSBHdhaZuhiQwO9gcwkScCxbtwjjTx0cWEiAel95YVEFMluyHO5laNaVDRfS9t_VeIjO4B9eaBjK4TLLs2uywZEQUlW3RYraj53RjPA1Cu0SHJQGwtQ8TAU27RnsEdWk4MfpVXHpnpryOVK_SendFlLHygtfHskhx_dSzgrRZgwi_0jaTW0x7n0uNq_YVdFV6QwSDByrGBY3nrovIGvHTodQk-4hXyFIj6BtgVOA6ZyzbA3kJ0Fh-y0YE6-kHxKh-C54-YpshnpdmYqmZOci2AqxwJX1ueVCEPaJdrjqcZORS41Na6qmZFsWzBSve4__Zb6juB_MDxaenbNZsmT7_uQI4DDTGqgHA1h40-VfCEDYvJDIyoKrPj-WbvoQiJ_Ya3zFgZ9hB8LwxdAocpbIK3uQNIKwqhz9v6c4cs7AjKAqD5PTTod24iSSHyYdn5n1vjBQg_euJOexGY41IhOkGCCtAe94HHq-8MDve8bR8ffrsYyuO2b1EbPRfBsooHBG3mVMRa8gO9NGm0BtG-uslHUhLwWQewtqX_BlyWUYz5vD4Ke3AZnCh8tj5bBgcG2Z22qKcqbiTv40ADHBY5RdwbWhAiqO8DmLoteWJ=w1366-h617'),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
