.class public Lcom/keephealth/android/util/SportDataHelper;
.super Ljava/lang/Object;
.source "SportDataHelper.java"

# interfaces
.implements Lcom/keephealth/android/app/Constants;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResByType(I)I
    .registers 4

    .line 73
    const-string v0, "545r"

    const v1, 0x7f0d0288

    const v2, 0x7f0d0270

    packed-switch p0, :pswitch_data_208

    :pswitch_b
    move v1, v2

    goto/16 :goto_206

    :pswitch_e
    const v1, 0x7f0d02b6

    goto/16 :goto_206

    :pswitch_13
    const v1, 0x7f0d02a1

    goto/16 :goto_206

    :pswitch_18
    const v1, 0x7f0d0295

    goto/16 :goto_206

    :pswitch_1d
    const v1, 0x7f0d02be

    goto/16 :goto_206

    :pswitch_22
    const v1, 0x7f0d029b

    goto/16 :goto_206

    :pswitch_27
    const v1, 0x7f0d02c4

    goto/16 :goto_206

    :pswitch_2c
    const v1, 0x7f0d0293

    goto/16 :goto_206

    :pswitch_31
    const v1, 0x7f0d02cc

    goto/16 :goto_206

    :pswitch_36
    const v1, 0x7f0d02ce

    goto/16 :goto_206

    :pswitch_3b
    const v1, 0x7f0d02a0

    goto/16 :goto_206

    :pswitch_40
    const v1, 0x7f0d02b4

    goto/16 :goto_206

    :pswitch_45
    const v1, 0x7f0d02a2

    goto/16 :goto_206

    :pswitch_4a
    const v1, 0x7f0d02c6

    goto/16 :goto_206

    :pswitch_4f
    const v1, 0x7f0d02d1

    goto/16 :goto_206

    :pswitch_54
    const v1, 0x7f0d02b0

    goto/16 :goto_206

    :pswitch_59
    const v1, 0x7f0d02ac

    goto/16 :goto_206

    :pswitch_5e
    const v1, 0x7f0d0291

    goto/16 :goto_206

    :pswitch_63
    const v1, 0x7f0d029e

    goto/16 :goto_206

    :pswitch_68
    const v1, 0x7f0d02cf

    goto/16 :goto_206

    :pswitch_6d
    const v1, 0x7f0d02ae

    goto/16 :goto_206

    :pswitch_72
    const v1, 0x7f0d02c8

    goto/16 :goto_206

    :pswitch_77
    const v1, 0x7f0d02da

    goto/16 :goto_206

    :pswitch_7c
    const v1, 0x7f0d0299

    goto/16 :goto_206

    :pswitch_81
    const v1, 0x7f0d0294

    goto/16 :goto_206

    :pswitch_86
    const v1, 0x7f0d02d7

    goto/16 :goto_206

    :pswitch_8b
    const v1, 0x7f0d02ab

    goto/16 :goto_206

    :pswitch_90
    const v1, 0x7f0d02cb

    goto/16 :goto_206

    :pswitch_95
    const v1, 0x7f0d029c

    goto/16 :goto_206

    :pswitch_9a
    const v1, 0x7f0d02d6

    goto/16 :goto_206

    :pswitch_9f
    const v1, 0x7f0d02d9

    goto/16 :goto_206

    :pswitch_a4
    const v1, 0x7f0d02a6

    goto/16 :goto_206

    :pswitch_a9
    const v1, 0x7f0d0290

    goto/16 :goto_206

    :pswitch_ae
    const v1, 0x7f0d02c3

    goto/16 :goto_206

    :pswitch_b3
    const v1, 0x7f0d028c

    goto/16 :goto_206

    .line 287
    :pswitch_b8
    const-string p0, "\u98de\u9556"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d0298

    goto/16 :goto_206

    .line 283
    :pswitch_c2
    const-string p0, "\u98de\u76d8"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d02a9

    goto/16 :goto_206

    :pswitch_cc
    const v1, 0x7f0d02b2

    goto/16 :goto_206

    :pswitch_d1
    const v1, 0x7f0d02c7

    goto/16 :goto_206

    :pswitch_d6
    const v1, 0x7f0d02dc

    goto/16 :goto_206

    :pswitch_db
    const v1, 0x7f0d02d0

    goto/16 :goto_206

    :pswitch_e0
    const v1, 0x7f0d02d4

    goto/16 :goto_206

    :pswitch_e5
    const v1, 0x7f0d028e

    goto/16 :goto_206

    :pswitch_ea
    const v1, 0x7f0d02bc

    goto/16 :goto_206

    :pswitch_ef
    const v1, 0x7f0d02b5

    goto/16 :goto_206

    :pswitch_f4
    const v1, 0x7f0d0292

    goto/16 :goto_206

    :pswitch_f9
    const v1, 0x7f0d02a3

    goto/16 :goto_206

    :pswitch_fe
    const v1, 0x7f0d02b1

    goto/16 :goto_206

    :pswitch_103
    const v1, 0x7f0d02b9

    goto/16 :goto_206

    :pswitch_108
    const v1, 0x7f0d02bb

    goto/16 :goto_206

    :pswitch_10d
    const v1, 0x7f0d029d

    goto/16 :goto_206

    :pswitch_112
    const v1, 0x7f0d02a5

    goto/16 :goto_206

    :pswitch_117
    const v1, 0x7f0d02b8

    goto/16 :goto_206

    :pswitch_11c
    const v1, 0x7f0d02ba

    goto/16 :goto_206

    :pswitch_121
    const v1, 0x7f0d029a

    goto/16 :goto_206

    :pswitch_126
    const v1, 0x7f0d02d8

    goto/16 :goto_206

    :pswitch_12b
    const v1, 0x7f0d02bf

    goto/16 :goto_206

    :pswitch_130
    const v1, 0x7f0d02aa

    goto/16 :goto_206

    :pswitch_135
    const v1, 0x7f0d029f

    goto/16 :goto_206

    :pswitch_13a
    const v1, 0x7f0d02c0

    goto/16 :goto_206

    :pswitch_13f
    const v1, 0x7f0d02ad

    goto/16 :goto_206

    :pswitch_144
    const v1, 0x7f0d0297

    goto/16 :goto_206

    :pswitch_149
    const v1, 0x7f0d02cd

    goto/16 :goto_206

    :pswitch_14e
    const v1, 0x7f0d02d3

    goto/16 :goto_206

    :pswitch_153
    const v1, 0x7f0d02bd

    goto/16 :goto_206

    :pswitch_158
    const v1, 0x7f0d028d

    goto/16 :goto_206

    :pswitch_15d
    const v1, 0x7f0d02af

    goto/16 :goto_206

    :pswitch_162
    const v1, 0x7f0d02d2

    goto/16 :goto_206

    :pswitch_167
    const v1, 0x7f0d0296

    goto/16 :goto_206

    :pswitch_16c
    const v1, 0x7f0d02b7

    goto/16 :goto_206

    :pswitch_171
    const v1, 0x7f0d02c1

    goto/16 :goto_206

    :pswitch_176
    const v1, 0x7f0d02c5

    goto/16 :goto_206

    :pswitch_17b
    const v1, 0x7f0d02d5

    goto/16 :goto_206

    .line 171
    :pswitch_180
    const-string p0, "gdr3d"

    const-string v0, "\u692d\u5706\u673a"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d02a4

    goto/16 :goto_206

    :pswitch_18c
    const v1, 0x7f0d02db

    goto/16 :goto_206

    :pswitch_191
    const v1, 0x7f0d02c2

    goto/16 :goto_206

    :pswitch_196
    const v1, 0x7f0d02ca

    goto/16 :goto_206

    :pswitch_19b
    const v1, 0x7f0d02b3

    goto/16 :goto_206

    :pswitch_1a0
    const v1, 0x7f0d02c9

    goto/16 :goto_206

    :pswitch_1a5
    const v1, 0x7f0d028f

    goto/16 :goto_206

    :pswitch_1aa
    const v1, 0x7f0d02a7

    goto/16 :goto_206

    :pswitch_1af
    const v1, 0x7f0d028a

    goto :goto_206

    :pswitch_1b3
    const v1, 0x7f0d02ed

    goto :goto_206

    :pswitch_1b7
    const v1, 0x7f0d027e

    goto :goto_206

    :pswitch_1bb
    const v1, 0x7f0d02dd

    goto :goto_206

    :pswitch_1bf
    const v1, 0x7f0d02eb

    goto :goto_206

    :pswitch_1c3
    const v1, 0x7f0d0284

    goto :goto_206

    :pswitch_1c7
    const v1, 0x7f0d02e1

    goto :goto_206

    :pswitch_1cb
    const v1, 0x7f0d0282

    goto :goto_206

    :pswitch_1cf
    const v1, 0x7f0d0286

    goto :goto_206

    :pswitch_1d3
    const v1, 0x7f0d02e7

    goto :goto_206

    :pswitch_1d7
    const v1, 0x7f0d0265

    goto :goto_206

    :pswitch_1db
    const v1, 0x7f0d0271

    goto :goto_206

    :pswitch_1df
    const v1, 0x7f0d026c

    goto :goto_206

    :pswitch_1e3
    const v1, 0x7f0d02e0

    goto :goto_206

    :pswitch_1e7
    const v1, 0x7f0d027b

    goto :goto_206

    :pswitch_1eb
    const v1, 0x7f0d027d

    goto :goto_206

    :pswitch_1ef
    const v1, 0x7f0d02e6

    goto :goto_206

    :pswitch_1f3
    const v1, 0x7f0d0279

    goto :goto_206

    :pswitch_1f7
    const v1, 0x7f0d02e4

    goto :goto_206

    :pswitch_1fb
    const v1, 0x7f0d0263

    goto :goto_206

    :pswitch_1ff
    const v1, 0x7f0d0275

    goto :goto_206

    :pswitch_203
    const v1, 0x7f0d02ea

    :goto_206
    :pswitch_206
    return v1

    nop

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_203
        :pswitch_b
        :pswitch_1ff
        :pswitch_1fb
        :pswitch_1f7
        :pswitch_1f3
        :pswitch_1ef
        :pswitch_1eb
        :pswitch_1e7
        :pswitch_1e3
        :pswitch_1df
        :pswitch_1db
        :pswitch_1d7
        :pswitch_1d3
        :pswitch_1cf
        :pswitch_206
        :pswitch_1cb
        :pswitch_1c7
        :pswitch_1c3
        :pswitch_206
        :pswitch_1bf
        :pswitch_1bb
        :pswitch_1b7
        :pswitch_1b3
        :pswitch_1af
        :pswitch_1aa
        :pswitch_1a5
        :pswitch_1a0
        :pswitch_19b
        :pswitch_196
        :pswitch_191
        :pswitch_18c
        :pswitch_180
        :pswitch_17b
        :pswitch_176
        :pswitch_171
        :pswitch_16c
        :pswitch_167
        :pswitch_162
        :pswitch_15d
        :pswitch_158
        :pswitch_153
        :pswitch_14e
        :pswitch_149
        :pswitch_144
        :pswitch_13f
        :pswitch_13a
        :pswitch_135
        :pswitch_130
        :pswitch_12b
        :pswitch_126
        :pswitch_121
        :pswitch_11c
        :pswitch_117
        :pswitch_112
        :pswitch_10d
        :pswitch_108
        :pswitch_103
        :pswitch_fe
        :pswitch_f9
        :pswitch_f4
        :pswitch_ef
        :pswitch_ea
        :pswitch_e5
        :pswitch_e0
        :pswitch_db
        :pswitch_d6
        :pswitch_d1
        :pswitch_cc
        :pswitch_c2
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a4
        :pswitch_9f
        :pswitch_9a
        :pswitch_95
        :pswitch_90
        :pswitch_8b
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_18
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public static getResByTypeMainMenu(I)I
    .registers 3

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gdr3d"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0288

    const v1, 0x7f0d0270

    packed-switch p0, :pswitch_data_78

    :pswitch_1d
    move v0, v1

    goto/16 :goto_77

    :pswitch_20
    const v0, 0x7f0d02a7

    goto :goto_77

    :pswitch_24
    const v0, 0x7f0d028a

    goto :goto_77

    :pswitch_28
    const v0, 0x7f0d02ed

    goto :goto_77

    :pswitch_2c
    const v0, 0x7f0d027e

    goto :goto_77

    :pswitch_30
    const v0, 0x7f0d02dd

    goto :goto_77

    :pswitch_34
    const v0, 0x7f0d02eb

    goto :goto_77

    :pswitch_38
    const v0, 0x7f0d0284

    goto :goto_77

    :pswitch_3c
    const v0, 0x7f0d02e1

    goto :goto_77

    :pswitch_40
    const v0, 0x7f0d02aa

    goto :goto_77

    :pswitch_44
    const v0, 0x7f0d0286

    goto :goto_77

    :pswitch_48
    const v0, 0x7f0d02e7

    goto :goto_77

    :pswitch_4c
    const v0, 0x7f0d0265

    goto :goto_77

    :pswitch_50
    const v0, 0x7f0d0271

    goto :goto_77

    :pswitch_54
    const v0, 0x7f0d026c

    goto :goto_77

    :pswitch_58
    const v0, 0x7f0d02e0

    goto :goto_77

    :pswitch_5c
    const v0, 0x7f0d027b

    goto :goto_77

    :pswitch_60
    const v0, 0x7f0d027d

    goto :goto_77

    :pswitch_64
    const v0, 0x7f0d02e6

    goto :goto_77

    :pswitch_68
    const v0, 0x7f0d0279

    goto :goto_77

    :pswitch_6c
    const v0, 0x7f0d02e4

    goto :goto_77

    :pswitch_70
    const v0, 0x7f0d0263

    goto :goto_77

    :pswitch_74
    const v0, 0x7f0d02ea

    :goto_77
    :pswitch_77
    return v0

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_74
        :pswitch_1d
        :pswitch_1d
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_77
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_77
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method public static getSportGpsCarloy(IFD)I
    .registers 6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-wide v0, 0x3fea48e8a71de69bL    # 0.8214

    goto :goto_17

    :cond_c
    const-wide v0, 0x3fe3a786c226809dL    # 0.6142

    goto :goto_17

    :cond_12
    const-wide v0, 0x3ff09374bc6a7efaL    # 1.036

    :goto_17
    float-to-double p0, p1

    mul-double/2addr p0, p2

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static getStringBytyp(I)Ljava/lang/String;
    .registers 1

    .line 488
    invoke-static {p0}, Lcom/keephealth/android/util/CacheHelper;->getSportName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initHealthHeartRate(I)Lcom/keephealth/android/greendao/bean/HealthHeartRate;
    .registers 6

    .line 64
    new-instance v0, Lcom/keephealth/android/greendao/bean/HealthHeartRate;

    invoke-direct {v0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;-><init>()V

    int-to-double v1, p0

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double/2addr v3, v1

    double-to-int p0, v3

    .line 66
    invoke-virtual {v0, p0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setLimit_threshold(I)V

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v3, v1

    double-to-int p0, v3

    .line 67
    invoke-virtual {v0, p0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setAerobic_threshold(I)V

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int p0, v1

    .line 68
    invoke-virtual {v0, p0}, Lcom/keephealth/android/greendao/bean/HealthHeartRate;->setBurn_fat_threshold(I)V

    return-object v0
.end method

.method public static initHeartRateValue(I)Lcom/keephealth/android/model/bean/HeartRateInterval;
    .registers 6

    .line 51
    new-instance v0, Lcom/keephealth/android/model/bean/HeartRateInterval;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/HeartRateInterval;-><init>()V

    .line 52
    iput p0, v0, Lcom/keephealth/android/model/bean/HeartRateInterval;->userMaxHR:I

    int-to-double v1, p0

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double/2addr v3, v1

    double-to-int p0, v3

    .line 53
    invoke-virtual {v0, p0}, Lcom/keephealth/android/model/bean/HeartRateInterval;->setLimintThreshold(I)V

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v3, v1

    double-to-int p0, v3

    .line 54
    invoke-virtual {v0, p0}, Lcom/keephealth/android/model/bean/HeartRateInterval;->setAerobicThreshold(I)V

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int p0, v1

    .line 55
    invoke-virtual {v0, p0}, Lcom/keephealth/android/model/bean/HeartRateInterval;->setBurnFatThreshold(I)V

    return-object v0
.end method
