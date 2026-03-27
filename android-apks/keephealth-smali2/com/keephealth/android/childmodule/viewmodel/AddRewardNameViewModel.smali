.class public Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AddRewardNameViewModel.java"


# instance fields
.field public addRewardNameModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public deleRewardNameModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public updateRewardNameModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->addRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->deleRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->updateRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public addRewardSave(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;IIILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 240
    invoke-interface {p6}, Ljava/util/List;->clear()V

    .line 241
    new-instance v0, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;-><init>()V

    .line 242
    invoke-virtual {v0, p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->setName(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p3}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->setCoin(I)V

    .line 244
    invoke-virtual {v0, p4}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->setIconId(I)V

    .line 245
    invoke-virtual {v0, p5}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->setId(I)V

    .line 246
    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string p2, "reward_add"

    invoke-static {p1, p2, p2, p6}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveRewardBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public deleReward(Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;)V
    .registers 3

    .line 98
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/DeleRewardHttpBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 99
    new-instance v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$3;-><init>(Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/RewardHttp;->deleReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public saveReward(Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;)V
    .registers 3

    .line 36
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/AddRewardHttpBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$1;-><init>(Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/RewardHttp;->saveReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public setIconId(Ljava/lang/String;)I
    .registers 5

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26f

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_270

    goto/16 :goto_1d7

    :sswitch_14
    const-string v0, "506"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_1d7

    :cond_1e
    const/16 v2, 0x21

    goto/16 :goto_1d7

    :sswitch_22
    const-string v0, "505"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_1d7

    :cond_2c
    const/16 v2, 0x20

    goto/16 :goto_1d7

    :sswitch_30
    const-string v0, "504"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto/16 :goto_1d7

    :cond_3a
    const/16 v2, 0x1f

    goto/16 :goto_1d7

    :sswitch_3e
    const-string v0, "503"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto/16 :goto_1d7

    :cond_48
    const/16 v2, 0x1e

    goto/16 :goto_1d7

    :sswitch_4c
    const-string v0, "502"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto/16 :goto_1d7

    :cond_56
    const/16 v2, 0x1d

    goto/16 :goto_1d7

    :sswitch_5a
    const-string v0, "501"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto/16 :goto_1d7

    :cond_64
    const/16 v2, 0x1c

    goto/16 :goto_1d7

    :sswitch_68
    const-string v0, "500"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto/16 :goto_1d7

    :cond_72
    const/16 v2, 0x1b

    goto/16 :goto_1d7

    :sswitch_76
    const-string v0, "400"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    goto/16 :goto_1d7

    :cond_80
    const/16 v2, 0x1a

    goto/16 :goto_1d7

    :sswitch_84
    const-string v0, "305"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    goto/16 :goto_1d7

    :cond_8e
    const/16 v2, 0x19

    goto/16 :goto_1d7

    :sswitch_92
    const-string v0, "304"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    goto/16 :goto_1d7

    :cond_9c
    const/16 v2, 0x18

    goto/16 :goto_1d7

    :sswitch_a0
    const-string v0, "303"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    goto/16 :goto_1d7

    :cond_aa
    const/16 v2, 0x17

    goto/16 :goto_1d7

    :sswitch_ae
    const-string v0, "302"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b8

    goto/16 :goto_1d7

    :cond_b8
    const/16 v2, 0x16

    goto/16 :goto_1d7

    :sswitch_bc
    const-string v0, "301"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c6

    goto/16 :goto_1d7

    :cond_c6
    const/16 v2, 0x15

    goto/16 :goto_1d7

    :sswitch_ca
    const-string v0, "300"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d4

    goto/16 :goto_1d7

    :cond_d4
    const/16 v2, 0x14

    goto/16 :goto_1d7

    :sswitch_d8
    const-string v0, "212"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e2

    goto/16 :goto_1d7

    :cond_e2
    const/16 v2, 0x13

    goto/16 :goto_1d7

    :sswitch_e6
    const-string v0, "211"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f0

    goto/16 :goto_1d7

    :cond_f0
    const/16 v2, 0x12

    goto/16 :goto_1d7

    :sswitch_f4
    const-string v0, "210"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fe

    goto/16 :goto_1d7

    :cond_fe
    const/16 v2, 0x11

    goto/16 :goto_1d7

    :sswitch_102
    const-string v0, "209"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10c

    goto/16 :goto_1d7

    :cond_10c
    const/16 v2, 0x10

    goto/16 :goto_1d7

    :sswitch_110
    const-string v0, "208"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11a

    goto/16 :goto_1d7

    :cond_11a
    const/16 v2, 0xf

    goto/16 :goto_1d7

    :sswitch_11e
    const-string v0, "207"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_128

    goto/16 :goto_1d7

    :cond_128
    const/16 v2, 0xe

    goto/16 :goto_1d7

    :sswitch_12c
    const-string v0, "206"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_136

    goto/16 :goto_1d7

    :cond_136
    const/16 v2, 0xd

    goto/16 :goto_1d7

    :sswitch_13a
    const-string v0, "205"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_144

    goto/16 :goto_1d7

    :cond_144
    const/16 v2, 0xc

    goto/16 :goto_1d7

    :sswitch_148
    const-string v0, "204"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_152

    goto/16 :goto_1d7

    :cond_152
    const/16 v2, 0xb

    goto/16 :goto_1d7

    :sswitch_156
    const-string v0, "203"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_160

    goto/16 :goto_1d7

    :cond_160
    const/16 v2, 0xa

    goto/16 :goto_1d7

    :sswitch_164
    const-string v0, "202"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16e

    goto/16 :goto_1d7

    :cond_16e
    const/16 v2, 0x9

    goto/16 :goto_1d7

    :sswitch_172
    const-string v0, "201"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17c

    goto/16 :goto_1d7

    :cond_17c
    const/16 v2, 0x8

    goto/16 :goto_1d7

    :sswitch_180
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_189

    goto :goto_1d7

    :cond_189
    const/4 v2, 0x7

    goto :goto_1d7

    :sswitch_18b
    const-string v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_194

    goto :goto_1d7

    :cond_194
    const/4 v2, 0x6

    goto :goto_1d7

    :sswitch_196
    const-string v0, "105"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19f

    goto :goto_1d7

    :cond_19f
    const/4 v2, 0x5

    goto :goto_1d7

    :sswitch_1a1
    const-string v0, "104"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1aa

    goto :goto_1d7

    :cond_1aa
    const/4 v2, 0x4

    goto :goto_1d7

    :sswitch_1ac
    const-string v0, "103"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b5

    goto :goto_1d7

    :cond_1b5
    const/4 v2, 0x3

    goto :goto_1d7

    :sswitch_1b7
    const-string v0, "102"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c0

    goto :goto_1d7

    :cond_1c0
    const/4 v2, 0x2

    goto :goto_1d7

    :sswitch_1c2
    const-string v0, "101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1cb

    goto :goto_1d7

    :cond_1cb
    const/4 v2, 0x1

    goto :goto_1d7

    :sswitch_1cd
    const-string v0, "100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move v2, v1

    :goto_1d7
    packed-switch v2, :pswitch_data_2fa

    goto/16 :goto_26f

    :pswitch_1dc
    const v1, 0x7f0d0309

    goto/16 :goto_26f

    :pswitch_1e1
    const v1, 0x7f0d0316

    goto/16 :goto_26f

    :pswitch_1e6
    const v1, 0x7f0d0304

    goto/16 :goto_26f

    :pswitch_1eb
    const v1, 0x7f0d0308

    goto/16 :goto_26f

    :pswitch_1f0
    const v1, 0x7f0d0307

    goto/16 :goto_26f

    :pswitch_1f5
    const v1, 0x7f0d0306

    goto/16 :goto_26f

    :pswitch_1fa
    const v1, 0x7f0d0301

    goto/16 :goto_26f

    :pswitch_1ff
    const v1, 0x7f0d0319

    goto/16 :goto_26f

    :pswitch_204
    const v1, 0x7f0d031d

    goto/16 :goto_26f

    :pswitch_209
    const v1, 0x7f0d031c

    goto/16 :goto_26f

    :pswitch_20e
    const v1, 0x7f0d0322

    goto/16 :goto_26f

    :pswitch_213
    const v1, 0x7f0d031e

    goto/16 :goto_26f

    :pswitch_218
    const v1, 0x7f0d031a

    goto :goto_26f

    :pswitch_21c
    const v1, 0x7f0d0305

    goto :goto_26f

    :pswitch_220
    const v1, 0x7f0d0318

    goto :goto_26f

    :pswitch_224
    const v1, 0x7f0d0320

    goto :goto_26f

    :pswitch_228
    const v1, 0x7f0d030f

    goto :goto_26f

    :pswitch_22c
    const v1, 0x7f0d0312

    goto :goto_26f

    :pswitch_230
    const v1, 0x7f0d0313

    goto :goto_26f

    :pswitch_234
    const v1, 0x7f0d030b

    goto :goto_26f

    :pswitch_238
    const v1, 0x7f0d0302

    goto :goto_26f

    :pswitch_23c
    const v1, 0x7f0d0303

    goto :goto_26f

    :pswitch_240
    const v1, 0x7f0d0314

    goto :goto_26f

    :pswitch_244
    const v1, 0x7f0d0311

    goto :goto_26f

    :pswitch_248
    const v1, 0x7f0d030d

    goto :goto_26f

    :pswitch_24c
    const v1, 0x7f0d0310

    goto :goto_26f

    :pswitch_250
    const v1, 0x7f0d030e

    goto :goto_26f

    :pswitch_254
    const v1, 0x7f0d0321

    goto :goto_26f

    :pswitch_258
    const v1, 0x7f0d0317

    goto :goto_26f

    :pswitch_25c
    const v1, 0x7f0d031b

    goto :goto_26f

    :pswitch_260
    const v1, 0x7f0d030a

    goto :goto_26f

    :pswitch_264
    const v1, 0x7f0d030c

    goto :goto_26f

    :pswitch_268
    const v1, 0x7f0d0315

    goto :goto_26f

    :pswitch_26c
    const v1, 0x7f0d031f

    :cond_26f
    :goto_26f
    return v1

    :sswitch_data_270
    .sparse-switch
        0xbdf1 -> :sswitch_1cd
        0xbdf2 -> :sswitch_1c2
        0xbdf3 -> :sswitch_1b7
        0xbdf4 -> :sswitch_1ac
        0xbdf5 -> :sswitch_1a1
        0xbdf6 -> :sswitch_196
        0xbdf7 -> :sswitch_18b
        0xc1b2 -> :sswitch_180
        0xc1b3 -> :sswitch_172
        0xc1b4 -> :sswitch_164
        0xc1b5 -> :sswitch_156
        0xc1b6 -> :sswitch_148
        0xc1b7 -> :sswitch_13a
        0xc1b8 -> :sswitch_12c
        0xc1b9 -> :sswitch_11e
        0xc1ba -> :sswitch_110
        0xc1bb -> :sswitch_102
        0xc1d1 -> :sswitch_f4
        0xc1d2 -> :sswitch_e6
        0xc1d3 -> :sswitch_d8
        0xc573 -> :sswitch_ca
        0xc574 -> :sswitch_bc
        0xc575 -> :sswitch_ae
        0xc576 -> :sswitch_a0
        0xc577 -> :sswitch_92
        0xc578 -> :sswitch_84
        0xc934 -> :sswitch_76
        0xccf5 -> :sswitch_68
        0xccf6 -> :sswitch_5a
        0xccf7 -> :sswitch_4c
        0xccf8 -> :sswitch_3e
        0xccf9 -> :sswitch_30
        0xccfa -> :sswitch_22
        0xccfb -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_26c
        :pswitch_268
        :pswitch_264
        :pswitch_260
        :pswitch_25c
        :pswitch_258
        :pswitch_254
        :pswitch_250
        :pswitch_24c
        :pswitch_248
        :pswitch_244
        :pswitch_240
        :pswitch_23c
        :pswitch_238
        :pswitch_234
        :pswitch_230
        :pswitch_22c
        :pswitch_228
        :pswitch_224
        :pswitch_220
        :pswitch_21c
        :pswitch_218
        :pswitch_213
        :pswitch_20e
        :pswitch_209
        :pswitch_204
        :pswitch_1ff
        :pswitch_1fa
        :pswitch_1f5
        :pswitch_1f0
        :pswitch_1eb
        :pswitch_1e6
        :pswitch_1e1
        :pswitch_1dc
    .end packed-switch
.end method

.method public updateReward(Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;)V
    .registers 3

    .line 67
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/UpdateRewardHttpBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel$2;-><init>(Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/RewardHttp;->updateReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
