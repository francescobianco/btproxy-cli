.class public Lcom/keephealth/android/ui/main/activity/RegisterActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/LoginContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/LoginPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/LoginContract$View;"
    }
.end annotation


# instance fields
.field btnRegiest:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ac
    .end annotation
.end field

.field etPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090176
    .end annotation
.end field

.field etSmsCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field etUsername:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090178
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field imgClean:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090204
    .end annotation
.end field

.field imgStatus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021b
    .end annotation
.end field

.field private isRunTime:Z

.field private longTime:I

.field private screenOffTime:J

.field private screenOnTime:J

.field timeRun:Ljava/lang/Runnable;

.field tvSmsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906d3
    .end annotation
.end field

.field private userName:Ljava/lang/String;

.field private userPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->handler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->timeRun:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->isRunTime:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/ui/main/activity/RegisterActivity;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I

    return p1
.end method

.method static synthetic access$008(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)I
    .registers 3

    .line 75
    iget v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->isRunTime:Z

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Ljava/lang/Runnable;J)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->postHandler(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private initMedal(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 8

    .line 329
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMedalDataDao()Lcom/keephealth/android/greendao/gen/MedalDataDao;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 331
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_20

    .line 333
    :cond_1c
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->setDefalutMedal()Ljava/util/List;

    move-result-object v1

    .line 335
    :cond_20
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_66

    .line 338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/MedalResult;

    .line 339
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getMedalNum()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setAchieve(Z)V

    .line 340
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getMedalNum()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/MedalResult;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v4}, Lcom/keephealth/android/util/DateUtil;->parseServerTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/keephealth/android/ui/mine/bean/MedalData;->setMedalAchieveTime(J)V

    goto :goto_30

    .line 343
    :cond_66
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->deleteAll()V

    .line 344
    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/MedalDataDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic lambda$setEditTextInhibitInputSpaChat$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 6

    .line 130
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 131
    const-string p0, ""

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$showWebViewDialog$2(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 225
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private postHandler(Ljava/lang/Runnable;J)V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setDefalutMedal()Ljava/util/List;
    .registers 71
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/MedalData;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v11, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const-wide/16 v1, 0x0

    const v3, 0x7f1003eb

    const v4, 0x7f1003ec

    const v5, 0x7f0d0168

    const v6, 0x7f0d0169

    const/4 v7, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 350
    new-instance v0, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x1

    const-wide/16 v13, 0x1

    const v15, 0x7f1003ed

    const v16, 0x7f1003ee

    const v17, 0x7f0d016a

    const v18, 0x7f0d016b

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 352
    new-instance v1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const/16 v33, 0x1

    const-wide/16 v24, 0x2

    const v26, 0x7f1003ef

    const v27, 0x7f1003f0

    const v28, 0x7f0d016c

    const v29, 0x7f0d016d

    const/16 v30, 0x0

    move-object/from16 v23, v1

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 354
    new-instance v2, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x3

    const v15, 0x7f1003f1

    const v16, 0x7f1003f2

    const v17, 0x7f0d016e

    const v18, 0x7f0d016f

    move-object v12, v2

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 356
    new-instance v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x4

    const v26, 0x7f1003f3

    const v27, 0x7f1003f4

    const v28, 0x7f0d0170

    const v29, 0x7f0d0171

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 358
    new-instance v4, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x5

    const v15, 0x7f1003ac

    const v16, 0x7f1003ad

    const v17, 0x7f0d012c

    const v18, 0x7f0d012d

    move-object v12, v4

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 360
    new-instance v5, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x6

    const v26, 0x7f1003aa

    const v27, 0x7f1003ab

    const v28, 0x7f0d012a

    const v29, 0x7f0d012b

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 362
    new-instance v6, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x7

    const v15, 0x7f1003ce

    const v16, 0x7f1003d5

    const v17, 0x7f0d0153

    const v18, 0x7f0d0154

    move-object v12, v6

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 364
    new-instance v7, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x8

    const v26, 0x7f1003cf

    const v27, 0x7f1003d4

    const v28, 0x7f0d0151

    const v29, 0x7f0d0152

    move-object/from16 v23, v7

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 366
    new-instance v8, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x9

    const v15, 0x7f1003d8

    const v16, 0x7f1003db

    const v17, 0x7f0d0159

    const v18, 0x7f0d015a

    move-object v12, v8

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 368
    new-instance v9, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0xa

    const v26, 0x7f1003d0

    const v27, 0x7f1003d3

    const v28, 0x7f0d0150

    const v29, 0x7f0d014f

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 370
    new-instance v10, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0xb

    const v15, 0x7f1003d9

    const v16, 0x7f1003da

    const v17, 0x7f0d0157

    const v18, 0x7f0d0158

    move-object v12, v10

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 372
    new-instance v12, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0xc

    const v26, 0x7f1003dc

    const v27, 0x7f1003dd

    const v28, 0x7f0d015b

    const v29, 0x7f0d015c

    move-object/from16 v23, v12

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 374
    new-instance v14, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/16 v23, 0x1

    const-wide/16 v15, 0xd

    const v17, 0x7f1003d1

    const v18, 0x7f1003d2

    const v19, 0x7f0d014e

    const v20, 0x7f0d014f

    const/16 v24, 0x0

    move-object v13, v14

    move-object/from16 v34, v14

    move-wide v14, v15

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v24

    invoke-direct/range {v13 .. v23}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 376
    new-instance v13, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x1

    const-wide/16 v36, 0xe

    const v38, 0x7f1003d6

    const v39, 0x7f1003d7

    const v40, 0x7f0d0155

    const v41, 0x7f0d0156

    const/16 v42, 0x0

    move-object/from16 v35, v13

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 379
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v24, 0x2

    const-wide/16 v16, 0xf

    const v18, 0x7f1003b2

    const v19, 0x7f1003b5

    const v20, 0x7f0d0134

    const v21, 0x7f0d0135

    const/16 v25, 0x0

    move-object v14, v15

    move-object/from16 v46, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v25

    invoke-direct/range {v14 .. v24}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 381
    new-instance v14, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x2

    const-wide/16 v36, 0x10

    const v38, 0x7f1003b6

    const v39, 0x7f1003b9

    const v40, 0x7f0d0138

    const v41, 0x7f0d0139

    move-object/from16 v35, v14

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 383
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/16 v25, 0x2

    const-wide/16 v16, 0x11

    const v18, 0x7f1003ae

    const v19, 0x7f1003b1

    const v20, 0x7f0d0130

    const v21, 0x7f0d0131

    const/16 v22, 0x0

    move-object/from16 v26, v15

    invoke-direct/range {v15 .. v25}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 385
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x12

    const v38, 0x7f1003b3

    const v39, 0x7f1003b4

    const v40, 0x7f0d0132

    const v41, 0x7f0d0133

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v16, v15

    .line 387
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const/16 v57, 0x2

    const-wide/16 v48, 0x13

    const v50, 0x7f1003b7

    const v51, 0x7f1003b8

    const v52, 0x7f0d0136

    const v53, 0x7f0d0137

    const/16 v54, 0x0

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v17, v15

    .line 389
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x14

    const v38, 0x7f1003af

    const v39, 0x7f1003b0

    const v40, 0x7f0d012e

    const v41, 0x7f0d012f

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v18, v15

    .line 391
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x15

    const v50, 0x7f100404

    const v51, 0x7f100407

    const v52, 0x7f0d0181

    const v53, 0x7f0d0182

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v19, v15

    .line 393
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x16

    const v38, 0x7f10040a

    const v39, 0x7f10040b

    const v40, 0x7f0d0185

    const v41, 0x7f0d0186

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v20, v15

    .line 395
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x17

    const v50, 0x7f10040c

    const v51, 0x7f10040d

    const v52, 0x7f0d0187

    const v53, 0x7f0d0188

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v21, v15

    .line 397
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x18

    const v38, 0x7f100405

    const v39, 0x7f100406

    const v40, 0x7f0d017f

    const v41, 0x7f0d0180

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v22, v15

    .line 399
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x19

    const v50, 0x7f100408

    const v51, 0x7f100409

    const v52, 0x7f0d0183

    const v53, 0x7f0d0184

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v23, v15

    .line 402
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x3

    const-wide/16 v36, 0x1a

    const v38, 0x7f1003be

    const v39, 0x7f1003c1

    const v40, 0x7f0d0140

    const v41, 0x7f0d0141

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v24, v15

    .line 404
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const/16 v57, 0x3

    const-wide/16 v48, 0x1b

    const v50, 0x7f1003c8

    const v51, 0x7f1003cd

    const v52, 0x7f0d014c

    const v53, 0x7f0d014d

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v25, v15

    .line 406
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x1c

    const v38, 0x7f1003ba

    const v39, 0x7f1003bd

    const v40, 0x7f0d013c

    const v41, 0x7f0d013d

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v27, v15

    .line 408
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x1d

    const v50, 0x7f1003c2

    const v51, 0x7f1003c5

    const v52, 0x7f0d0144

    const v53, 0x7f0d0145

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v28, v15

    .line 410
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x1e

    const v38, 0x7f1003c9

    const v39, 0x7f1003cc

    const v40, 0x7f0d014a

    const v41, 0x7f0d014b

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v29, v15

    .line 412
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x1f

    const v50, 0x7f1003bb

    const v51, 0x7f1003bc

    const v52, 0x7f0d013a

    const v53, 0x7f0d013b

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v30, v15

    .line 414
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x20

    const v38, 0x7f1003bf

    const v39, 0x7f1003c0

    const v40, 0x7f0d013e

    const v41, 0x7f0d013f

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v31, v15

    .line 416
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x21

    const v50, 0x7f1003c3

    const v51, 0x7f1003c4

    const v52, 0x7f0d0142

    const v53, 0x7f0d0143

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v32, v15

    .line 418
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x22

    const v38, 0x7f1003c6

    const v39, 0x7f1003c7

    const v40, 0x7f0d0146

    const v41, 0x7f0d0147

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v33, v15

    .line 420
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x23

    const v50, 0x7f1003ca

    const v51, 0x7f1003cb

    const v52, 0x7f0d0148

    const v53, 0x7f0d0149

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 422
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x24

    const v38, 0x7f1003f7

    const v39, 0x7f1003f8

    const v40, 0x7f0d0174

    const v41, 0x7f0d0175

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 424
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const/16 v58, 0x3

    const-wide/16 v49, 0x25

    const v51, 0x7f1003f9

    const v52, 0x7f1003fa

    const v53, 0x7f0d0176

    const v54, 0x7f0d0177

    const/16 v55, 0x0

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v36, v15

    .line 426
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const/16 v69, 0x3

    const-wide/16 v60, 0x26

    const v62, 0x7f1003f5

    const v63, 0x7f1003f6

    const v64, 0x7f0d0172

    const v65, 0x7f0d0173

    const/16 v66, 0x0

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v37, v15

    .line 428
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x27

    const v51, 0x7f1003fc

    const v52, 0x7f1003fd

    const v53, 0x7f0d0179

    const v54, 0x7f0d017a

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v38, v15

    .line 430
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x28

    const v62, 0x7f1003fb

    const v63, 0x7f100400

    const v64, 0x7f0d0178

    const v65, 0x7f0d017d

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v39, v15

    .line 432
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x29

    const v51, 0x7f1003fe

    const v52, 0x7f1003ff

    const v53, 0x7f0d017b

    const v54, 0x7f0d017c

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v40, v15

    .line 435
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const/16 v69, 0x4

    const-wide/16 v60, 0x2a

    const v62, 0x7f1003e2

    const v63, 0x7f1003e5

    const v64, 0x7f0d0163

    const v65, 0x7f0d0164

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v41, v15

    .line 437
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const/16 v58, 0x4

    const-wide/16 v49, 0x2b

    const v51, 0x7f1003de

    const v52, 0x7f1003e1

    const v53, 0x7f0d015f

    const v54, 0x7f0d0160

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v42, v15

    .line 439
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x2c

    const v62, 0x7f1003e3

    const v63, 0x7f1003e4

    const v64, 0x7f0d0161

    const v65, 0x7f0d0162

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v43, v15

    .line 441
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x2d

    const v51, 0x7f1003e6

    const v52, 0x7f1003e7

    const v53, 0x7f0d0165

    const v54, 0x7f0d0166

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v44, v15

    .line 443
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x2e

    const v62, 0x7f1003df

    const v63, 0x7f1003e0

    const v64, 0x7f0d015d

    const v65, 0x7f0d015e

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v45, v15

    .line 446
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 447
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v34

    .line 460
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v46

    .line 462
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    .line 464
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    .line 465
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    .line 466
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    .line 467
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    .line 468
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    .line 469
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    .line 470
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    .line 471
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    .line 472
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    .line 473
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    .line 474
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    .line 475
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    .line 476
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    .line 477
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    .line 478
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v31

    .line 479
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    .line 480
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v33

    .line 481
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v47

    .line 482
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v35

    .line 483
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v36

    .line 484
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v37

    .line 485
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v38

    .line 486
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v39

    .line 487
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v40

    .line 488
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v41

    .line 489
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v42

    .line 490
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v43

    .line 491
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    .line 492
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v45

    .line 493
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v15
.end method

.method private setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V
    .registers 5

    .line 129
    new-instance v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x1

    .line 135
    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private showWebViewDialog()V
    .registers 7

    .line 218
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f11031e

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0907ed

    .line 220
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const v3, 0x7f09009a

    .line 221
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09009e

    .line 225
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 227
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 228
    new-instance v3, Lcom/keephealth/android/ui/main/activity/RegisterActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 259
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 260
    const-string v5, "CN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b9

    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6b

    goto :goto_b9

    .line 262
    :cond_6b
    const-string v5, "TW"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b6

    const-string v5, "HK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7c

    goto :goto_b6

    .line 264
    :cond_7c
    const-string v5, "fr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 265
    const-string v3, "file:///android_asset/privacypolicy_fr.html"

    goto :goto_bb

    .line 266
    :cond_87
    const-string v5, "es"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 267
    const-string v3, "file:///android_asset/privacypolicy_es.html"

    goto :goto_bb

    .line 268
    :cond_92
    const-string v5, "de"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 269
    const-string v3, "file:///android_asset/privacypolicy_de.html"

    goto :goto_bb

    .line 270
    :cond_9d
    const-string v5, "ja"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 271
    const-string v3, "file:///android_asset/privacypolicy_ja.html"

    goto :goto_bb

    .line 272
    :cond_a8
    const-string v5, "it"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 273
    const-string v3, "file:///android_asset/privacypolicy_it.html"

    goto :goto_bb

    .line 275
    :cond_b3
    const-string v3, "file:///android_asset/privacypolicyEh.html"

    goto :goto_bb

    .line 263
    :cond_b6
    :goto_b6
    const-string v3, "file:///android_asset/privacypolicy_tw.html"

    goto :goto_bb

    .line 261
    :cond_b9
    :goto_b9
    const-string v3, "file:///android_asset/privacypolicy.html"

    .line 277
    :goto_bb
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 279
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 280
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public LoginSuccess(ILcom/keephealth/android/model/BaseBean;)V
    .registers 6

    .line 297
    invoke-virtual {p2}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/UserBean;

    .line 299
    const-string p2, "LOGIN_TYPE"

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 300
    const-string p2, "IS_LOGIN_STATE"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 301
    const-string p2, "USER_NAME"

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userName:Ljava/lang/String;

    invoke-static {p0, p2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\u5b58\u50a83:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "gff333"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string p2, "USER_PASSWORD"

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userPwd:Ljava/lang/String;

    invoke-static {p0, p2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string p2, "USER_TOKEN"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string p2, "USER_TOKEN_BASE"

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object p2

    const/4 v1, 0x0

    aget p2, p2, v1

    add-int/lit8 p2, p2, -0x14

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    .line 308
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setMonth(I)V

    .line 309
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setDay(I)V

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UserBean;->setBirthday(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/UserBean;->setUnit(I)V

    const/16 p2, 0xaa

    .line 312
    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UserBean;->setHeight(I)V

    const/high16 p2, 0x42880000    # 68.0f

    .line 313
    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UserBean;->setHeightLb(F)V

    const/high16 p2, 0x42700000    # 60.0f

    .line 314
    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    const/high16 p2, 0x43040000    # 132.0f

    .line 315
    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    const/16 p2, 0xa

    .line 316
    invoke-virtual {p1, p2}, Lcom/keephealth/android/model/bean/UserBean;->setWeightSt(I)V

    .line 317
    const-string p2, "USER_BASE"

    invoke-static {p1}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 319
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 320
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession(I)Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object p2

    .line 321
    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 322
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->setDatabase()V

    .line 323
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->initMedal(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 324
    const-class p1, Lcom/keephealth/android/ui/mine/activity/PersonUnitActivity;

    invoke-static {p0, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityAndFinish(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public bindingFaild(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public bindingSuccess()V
    .registers 1

    return-void
.end method

.method cleanUserName()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090204
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0077

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 102
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->layoutTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 105
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->titleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->btnRegiest:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 112
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "email"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_50
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/RegisterActivity$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->setEditTextInhibitInputSpaChat(Landroid/widget/EditText;)V

    return-void
.end method

.method synthetic lambda$showWebViewDialog$1$com-keephealth-android-ui-main-activity-RegisterActivity(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 9

    .line 222
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 223
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    move-object v0, p1

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginPresenter;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userPwd:Ljava/lang/String;

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v1, ""

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/persenter/main/LoginPresenter;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loginFaild(I)V
    .registers 2

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 566
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 567
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 549
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onPause()V

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->screenOffTime:J

    .line 551
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .registers 7

    .line 555
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onResume()V

    .line 556
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->isRunTime:Z

    if-eqz v0, :cond_26

    .line 557
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->screenOnTime:J

    .line 559
    iget v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->screenOffTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I

    .line 560
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->timeRun:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v4, v5}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->postHandler(Ljava/lang/Runnable;J)V

    :cond_26
    return-void
.end method

.method public registerFaild(I)V
    .registers 2

    return-void
.end method

.method public registerSuccess()V
    .registers 4

    .line 505
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/LoginPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userPwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/persenter/main/LoginPresenter;->requestLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method resiestAccount()V
    .registers 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900ac
        }
    .end annotation

    const v0, 0x7f0900ac

    const-wide/16 v1, 0x3e8

    .line 204
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_64

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userName:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userPwd:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userName:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/DataVaildUtil;->vaildEmailAndPwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    move-object v1, v0

    check-cast v1, Lcom/keephealth/android/persenter/main/LoginPresenter;

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->userPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etSmsCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v2, ""

    invoke-virtual/range {v1 .. v6}, Lcom/keephealth/android/persenter/main/LoginPresenter;->regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 212
    :cond_56
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method sendCode()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0906d3
        }
    .end annotation

    const v0, 0x7f0906d3

    const-wide/16 v1, 0x3e8

    .line 286
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result v0

    if-nez v0, :cond_28

    .line 287
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {p0, v0}, Lcom/keephealth/android/util/DataVaildUtil;->validEmail(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 289
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 290
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/main/LoginPresenter;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/persenter/main/LoginPresenter;->sendCode(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public sendCodeFaild(I)V
    .registers 3

    .line 530
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public sendCodeSuccess()V
    .registers 4

    .line 525
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-direct {p0, v0, v1, v2}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->postHandler(Ljava/lang/Runnable;J)V

    return-void
.end method

.method textChanged()V
    .registers 4
    .annotation runtime Lbutterknife/OnTextChanged;
        value = {
            0x7f090178,
            0x7f090176,
            0x7f09016f
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgClean:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 144
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgClean:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    :goto_1e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    .line 147
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    .line 148
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_6f

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etSmsCode:Landroid/widget/EditText;

    .line 149
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_6f

    .line 153
    :cond_60
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->btnRegiest:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->btnRegiest:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_7c

    .line 150
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->btnRegiest:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->btnRegiest:Landroid/widget/Button;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_7c
    return-void
.end method

.method updatePwdStatus()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09021b
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "close"

    if-eqz v0, :cond_27

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    const v1, 0x7f0d0238

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_49

    .line 188
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->imgStatus:Landroid/widget/ImageView;

    const v1, 0x7f0d0237

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 193
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public verifyCodeFail(I)V
    .registers 2

    return-void
.end method

.method public verifyCodeSuccess()V
    .registers 1

    return-void
.end method
