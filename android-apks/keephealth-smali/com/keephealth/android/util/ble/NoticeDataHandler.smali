.class public Lcom/keephealth/android/util/ble/NoticeDataHandler;
.super Ljava/lang/Object;
.source "NoticeDataHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerNoticeData([B)V
    .registers 18

    .line 20
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/keephealth/android/model/bean/AppNotice;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/AppNotice;-><init>()V

    const/4 v2, 0x3

    .line 22
    aget-byte v3, p1, v2

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v3

    const/4 v4, 0x4

    .line 23
    aget-byte v5, p1, v4

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v5

    const/4 v6, 0x6

    .line 24
    aget-byte v7, p1, v6

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v7

    const/4 v8, 0x5

    .line 25
    aget-byte v9, p1, v8

    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v9

    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v9

    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u6d88\u606f\u901a\u77e5:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gff333"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .line 27
    aget-byte v11, v3, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5b

    move v11, v12

    goto :goto_5c

    :cond_5b
    move v11, v10

    :goto_5c
    iput-boolean v11, v1, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    .line 28
    aget-byte v11, v3, v12

    if-ne v11, v12, :cond_64

    move v11, v12

    goto :goto_65

    :cond_64
    move v11, v10

    :goto_65
    iput-boolean v11, v1, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    const/4 v11, 0x2

    .line 29
    aget-byte v13, v3, v11

    if-ne v13, v12, :cond_6e

    move v13, v12

    goto :goto_6f

    :cond_6e
    move v13, v10

    :goto_6f
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->email:Z

    .line 30
    aget-byte v13, v3, v2

    if-ne v13, v12, :cond_77

    move v13, v12

    goto :goto_78

    :cond_77
    move v13, v10

    :goto_78
    iput-boolean v13, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    .line 31
    aget-byte v13, v3, v4

    if-ne v13, v12, :cond_80

    move v13, v12

    goto :goto_81

    :cond_80
    move v13, v10

    :goto_81
    iput-boolean v13, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    .line 32
    aget-byte v13, v3, v8

    if-ne v13, v12, :cond_89

    move v13, v12

    goto :goto_8a

    :cond_89
    move v13, v10

    :goto_8a
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    .line 33
    aget-byte v13, v3, v6

    if-ne v13, v12, :cond_92

    move v13, v12

    goto :goto_93

    :cond_92
    move v13, v10

    :goto_93
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    const/4 v13, 0x7

    .line 34
    aget-byte v3, v3, v13

    if-ne v3, v12, :cond_9c

    move v3, v12

    goto :goto_9d

    :cond_9c
    move v3, v10

    :goto_9d
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    .line 35
    aget-byte v3, v5, v10

    if-ne v3, v12, :cond_a5

    move v3, v12

    goto :goto_a6

    :cond_a5
    move v3, v10

    :goto_a6
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    .line 36
    aget-byte v3, v5, v12

    if-ne v3, v12, :cond_ae

    move v3, v12

    goto :goto_af

    :cond_ae
    move v3, v10

    :goto_af
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    .line 37
    aget-byte v3, v5, v11

    if-ne v3, v12, :cond_b7

    move v3, v12

    goto :goto_b8

    :cond_b7
    move v3, v10

    :goto_b8
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    .line 38
    aget-byte v3, v5, v2

    if-ne v3, v12, :cond_c0

    move v3, v12

    goto :goto_c1

    :cond_c0
    move v3, v10

    :goto_c1
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    .line 39
    aget-byte v3, v5, v4

    if-ne v3, v12, :cond_c9

    move v3, v12

    goto :goto_ca

    :cond_c9
    move v3, v10

    :goto_ca
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->messager:Z

    .line 40
    aget-byte v3, v5, v8

    if-ne v3, v12, :cond_d2

    move v3, v12

    goto :goto_d3

    :cond_d2
    move v3, v10

    :goto_d3
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    .line 41
    aget-byte v3, v5, v6

    if-ne v3, v12, :cond_db

    move v3, v12

    goto :goto_dc

    :cond_db
    move v3, v10

    :goto_dc
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->viber:Z

    .line 42
    aget-byte v3, v5, v13

    if-ne v3, v12, :cond_e4

    move v3, v12

    goto :goto_e5

    :cond_e4
    move v3, v10

    :goto_e5
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDingding:Z

    .line 44
    aget-byte v3, v9, v10

    if-ne v3, v12, :cond_ed

    move v3, v12

    goto :goto_ee

    :cond_ed
    move v3, v10

    :goto_ee
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->telegram:Z

    .line 45
    aget-byte v3, v9, v12

    if-ne v3, v12, :cond_f6

    move v3, v12

    goto :goto_f7

    :cond_f6
    move v3, v10

    :goto_f7
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->sina:Z

    .line 46
    aget-byte v3, v9, v11

    if-ne v3, v12, :cond_ff

    move v3, v12

    goto :goto_100

    :cond_ff
    move v3, v10

    :goto_100
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->kakao:Z

    .line 48
    aget-byte v3, v7, v6

    if-ne v3, v12, :cond_108

    move v3, v12

    goto :goto_109

    :cond_108
    move v3, v10

    :goto_109
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isKeepHealth:Z

    .line 49
    aget-byte v3, v7, v13

    if-ne v3, v12, :cond_111

    move v3, v12

    goto :goto_112

    :cond_111
    move v3, v10

    :goto_112
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->otherApp:Z

    .line 50
    aget-byte v3, v7, v10

    if-ne v3, v12, :cond_11a

    move v3, v12

    goto :goto_11b

    :cond_11a
    move v3, v10

    :goto_11b
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isRili:Z

    .line 51
    aget-byte v3, v9, v12

    if-ne v3, v12, :cond_123

    move v3, v12

    goto :goto_124

    :cond_123
    move v3, v10

    :goto_124
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isWeibo:Z

    .line 53
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xa

    if-ne v3, v5, :cond_301

    .line 54
    aget-byte v3, p1, v13

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v3

    const/16 v7, 0x8

    .line 55
    aget-byte v7, p1, v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v7

    const/16 v9, 0x9

    .line 56
    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v9

    invoke-static {v9}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v9

    .line 57
    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v5

    const/16 v14, 0xb

    .line 58
    aget-byte v14, p1, v14

    invoke-static {v14}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v14

    invoke-static {v14}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v14

    const/16 v15, 0xc

    .line 59
    aget-byte v15, p1, v15

    invoke-static {v15}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v15

    invoke-static {v15}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v15

    .line 60
    aget-byte v13, v3, v10

    if-ne v13, v12, :cond_178

    move v13, v12

    goto :goto_179

    :cond_178
    move v13, v10

    :goto_179
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDouyin:Z

    .line 61
    aget-byte v13, v3, v12

    if-ne v13, v12, :cond_181

    move v13, v12

    goto :goto_182

    :cond_181
    move v13, v10

    :goto_182
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishou:Z

    .line 62
    aget-byte v13, v3, v11

    if-ne v13, v12, :cond_18a

    move v13, v12

    goto :goto_18b

    :cond_18a
    move v13, v10

    :goto_18b
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDouyinjisuban:Z

    .line 63
    aget-byte v13, v3, v2

    if-ne v13, v12, :cond_193

    move v13, v12

    goto :goto_194

    :cond_193
    move v13, v10

    :goto_194
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->isHaluo:Z

    .line 64
    aget-byte v13, v3, v4

    if-ne v13, v12, :cond_19c

    move v13, v12

    goto :goto_19d

    :cond_19c
    move v13, v10

    :goto_19d
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->isXiaohongshu:Z

    .line 65
    aget-byte v13, v3, v8

    if-ne v13, v12, :cond_1a5

    move v13, v12

    goto :goto_1a6

    :cond_1a5
    move v13, v10

    :goto_1a6
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->isMeituan:Z

    .line 66
    aget-byte v13, v3, v6

    if-ne v13, v12, :cond_1ae

    move v13, v12

    goto :goto_1af

    :cond_1ae
    move v13, v10

    :goto_1af
    iput-boolean v13, v1, Lcom/keephealth/android/model/bean/AppNotice;->isZhifubao:Z

    const/4 v13, 0x7

    .line 67
    aget-byte v3, v3, v13

    if-ne v3, v12, :cond_1b8

    move v3, v12

    goto :goto_1b9

    :cond_1b8
    move v3, v10

    :goto_1b9
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDazongdianping:Z

    .line 69
    aget-byte v3, v7, v10

    if-ne v3, v12, :cond_1c1

    move v3, v12

    goto :goto_1c2

    :cond_1c1
    move v3, v10

    :goto_1c2
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isMomo:Z

    .line 70
    aget-byte v3, v7, v12

    if-ne v3, v12, :cond_1ca

    move v3, v12

    goto :goto_1cb

    :cond_1ca
    move v3, v10

    :goto_1cb
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isBilibili:Z

    .line 71
    aget-byte v3, v7, v11

    if-ne v3, v12, :cond_1d3

    move v3, v12

    goto :goto_1d4

    :cond_1d3
    move v3, v10

    :goto_1d4
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isBosszhipin:Z

    .line 72
    aget-byte v3, v7, v2

    if-ne v3, v12, :cond_1dc

    move v3, v12

    goto :goto_1dd

    :cond_1dc
    move v3, v10

    :goto_1dd
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isQQyouxiang:Z

    .line 73
    aget-byte v3, v7, v4

    if-ne v3, v12, :cond_1e5

    move v3, v12

    goto :goto_1e6

    :cond_1e5
    move v3, v10

    :goto_1e6
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isSoul:Z

    .line 74
    aget-byte v3, v7, v8

    if-ne v3, v12, :cond_1ee

    move v3, v12

    goto :goto_1ef

    :cond_1ee
    move v3, v10

    :goto_1ef
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isZoom:Z

    .line 75
    aget-byte v3, v7, v6

    if-ne v3, v12, :cond_1f7

    move v3, v12

    goto :goto_1f8

    :cond_1f7
    move v3, v10

    :goto_1f8
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isBaidutieba:Z

    const/4 v3, 0x7

    .line 76
    aget-byte v7, v7, v3

    if-ne v7, v12, :cond_201

    move v3, v12

    goto :goto_202

    :cond_201
    move v3, v10

    :goto_202
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDouban:Z

    .line 78
    aget-byte v3, v9, v10

    if-ne v3, v12, :cond_20a

    move v3, v12

    goto :goto_20b

    :cond_20a
    move v3, v10

    :goto_20b
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isEleme:Z

    .line 79
    aget-byte v3, v9, v12

    if-ne v3, v12, :cond_213

    move v3, v12

    goto :goto_214

    :cond_213
    move v3, v10

    :goto_214
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isGaodeditu:Z

    .line 80
    aget-byte v3, v9, v11

    if-ne v3, v12, :cond_21c

    move v3, v12

    goto :goto_21d

    :cond_21c
    move v3, v10

    :goto_21d
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isJingdong:Z

    .line 81
    aget-byte v3, v9, v2

    if-ne v3, v12, :cond_225

    move v3, v12

    goto :goto_226

    :cond_225
    move v3, v10

    :goto_226
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isKuaishoujisuban:Z

    .line 82
    aget-byte v3, v9, v4

    if-ne v3, v12, :cond_22e

    move v3, v12

    goto :goto_22f

    :cond_22e
    move v3, v10

    :goto_22f
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isMaimai:Z

    .line 83
    aget-byte v3, v9, v8

    if-ne v3, v12, :cond_237

    move v3, v12

    goto :goto_238

    :cond_237
    move v3, v10

    :goto_238
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isPinduoduo:Z

    .line 84
    aget-byte v3, v9, v6

    if-ne v3, v12, :cond_240

    move v3, v12

    goto :goto_241

    :cond_240
    move v3, v10

    :goto_241
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isQiyeweixin:Z

    const/4 v3, 0x7

    .line 85
    aget-byte v7, v9, v3

    if-ne v7, v12, :cond_24a

    move v3, v12

    goto :goto_24b

    :cond_24a
    move v3, v10

    :goto_24b
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDidachuxing:Z

    .line 87
    aget-byte v3, v5, v10

    if-ne v3, v12, :cond_253

    move v3, v12

    goto :goto_254

    :cond_253
    move v3, v10

    :goto_254
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isTantan:Z

    .line 88
    aget-byte v3, v5, v12

    if-ne v3, v12, :cond_25c

    move v3, v12

    goto :goto_25d

    :cond_25c
    move v3, v10

    :goto_25d
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isTaobao:Z

    .line 89
    aget-byte v3, v5, v11

    if-ne v3, v12, :cond_265

    move v3, v12

    goto :goto_266

    :cond_265
    move v3, v10

    :goto_266
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isTielu12306:Z

    .line 90
    aget-byte v3, v5, v2

    if-ne v3, v12, :cond_26e

    move v3, v12

    goto :goto_26f

    :cond_26e
    move v3, v10

    :goto_26f
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isXianyu:Z

    .line 91
    aget-byte v3, v5, v4

    if-ne v3, v12, :cond_277

    move v3, v12

    goto :goto_278

    :cond_277
    move v3, v10

    :goto_278
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isZhihu:Z

    .line 92
    aget-byte v3, v5, v8

    if-ne v3, v12, :cond_280

    move v3, v12

    goto :goto_281

    :cond_280
    move v3, v10

    :goto_281
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isAlibaba:Z

    .line 93
    aget-byte v3, v5, v6

    if-ne v3, v12, :cond_289

    move v3, v12

    goto :goto_28a

    :cond_289
    move v3, v10

    :goto_28a
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDidichuxing:Z

    const/4 v3, 0x7

    .line 94
    aget-byte v5, v5, v3

    if-ne v5, v12, :cond_293

    move v3, v12

    goto :goto_294

    :cond_293
    move v3, v10

    :goto_294
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isMeiyou:Z

    .line 96
    aget-byte v3, v14, v10

    if-ne v3, v12, :cond_29c

    move v3, v12

    goto :goto_29d

    :cond_29c
    move v3, v10

    :goto_29d
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isJiaoguan12123:Z

    .line 97
    aget-byte v3, v14, v12

    if-ne v3, v12, :cond_2a5

    move v3, v12

    goto :goto_2a6

    :cond_2a5
    move v3, v10

    :goto_2a6
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isDewu:Z

    .line 98
    aget-byte v3, v14, v11

    if-ne v3, v12, :cond_2ae

    move v3, v12

    goto :goto_2af

    :cond_2ae
    move v3, v10

    :goto_2af
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isWangyiyouxiangdashi:Z

    .line 99
    aget-byte v3, v14, v2

    if-ne v3, v12, :cond_2b7

    move v3, v12

    goto :goto_2b8

    :cond_2b7
    move v3, v10

    :goto_2b8
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isWangzherongyao:Z

    .line 100
    aget-byte v3, v14, v4

    if-ne v3, v12, :cond_2c0

    move v3, v12

    goto :goto_2c1

    :cond_2c0
    move v3, v10

    :goto_2c1
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunhuiyi:Z

    .line 101
    aget-byte v3, v14, v8

    if-ne v3, v12, :cond_2c9

    move v3, v12

    goto :goto_2ca

    :cond_2c9
    move v3, v10

    :goto_2ca
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isQunaerlvxing:Z

    .line 102
    aget-byte v3, v14, v6

    if-ne v3, v12, :cond_2d2

    move v3, v12

    goto :goto_2d3

    :cond_2d2
    move v3, v10

    :goto_2d3
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isXiechenglvxing:Z

    const/4 v3, 0x7

    .line 103
    aget-byte v3, v14, v3

    if-ne v3, v12, :cond_2dc

    move v3, v12

    goto :goto_2dd

    :cond_2dc
    move v3, v10

    :goto_2dd
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isTongchenglvxing:Z

    .line 105
    aget-byte v3, v15, v10

    if-ne v3, v12, :cond_2e5

    move v3, v12

    goto :goto_2e6

    :cond_2e5
    move v3, v10

    :goto_2e6
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isFeizhulvxing:Z

    .line 106
    aget-byte v3, v15, v12

    if-ne v3, v12, :cond_2ee

    move v3, v12

    goto :goto_2ef

    :cond_2ee
    move v3, v10

    :goto_2ef
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isZhixinghuochepiao:Z

    .line 107
    aget-byte v3, v15, v11

    if-ne v3, v12, :cond_2f7

    move v3, v12

    goto :goto_2f8

    :cond_2f7
    move v3, v10

    :goto_2f8
    iput-boolean v3, v1, Lcom/keephealth/android/model/bean/AppNotice;->isBaiduditu:Z

    .line 108
    aget-byte v2, v15, v2

    if-ne v2, v12, :cond_2ff

    move v10, v12

    :cond_2ff
    iput-boolean v10, v1, Lcom/keephealth/android/model/bean/AppNotice;->isTengxunditu:Z

    .line 110
    :cond_301
    iput-object v1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 111
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method
