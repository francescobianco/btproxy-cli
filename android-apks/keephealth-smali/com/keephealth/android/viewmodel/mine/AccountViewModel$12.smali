.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downloadEcg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/ui/mine/bean/ResultEcg;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

.field final synthetic val$finalUpdateTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V
    .registers 3

    .line 1232
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iput-object p2, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;->val$finalUpdateTime:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 1313
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 1323
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$1200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/ResultEcg;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1235
    iget-object v1, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V
    invoke-static {v1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    .line 1236
    invoke-virtual/range {p1 .. p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1b4

    .line 1237
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b4

    .line 1238
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object v2

    .line 1239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/mine/bean/ResultEcg;

    .line 1240
    iget-object v4, v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;->val$finalUpdateTime:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getUpdateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4a

    .line 1242
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "update_time_ecg"

    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getUpdateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :cond_4a
    new-instance v4, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-direct {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;-><init>()V

    .line 1245
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getHr()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setAvgHeart(I)V

    .line 1246
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getResults()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "22"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_6b

    .line 1247
    invoke-virtual {v4, v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v4, v8}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    goto :goto_83

    .line 1250
    :cond_6b
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getResults()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDesc(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getResults()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1252
    invoke-virtual {v4, v8}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    goto :goto_83

    .line 1254
    :cond_80
    invoke-virtual {v4, v7}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setState(I)V

    .line 1263
    :goto_83
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_e5

    .line 1264
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getDateTime()Ljava/lang/String;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1265
    aget-object v9, v5, v8

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1266
    aget-object v11, v5, v8

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1267
    aget-object v12, v5, v8

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1268
    aget-object v12, v5, v7

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1269
    aget-object v14, v5, v7

    invoke-virtual {v14, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1270
    aget-object v5, v5, v7

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_eb

    :cond_e5
    move v5, v8

    move v9, v5

    move v10, v9

    move v11, v10

    move v12, v11

    move v14, v12

    .line 1272
    :goto_eb
    invoke-virtual {v4, v9}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setYear(I)V

    .line 1273
    invoke-virtual {v4, v11}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setMonth(I)V

    .line 1274
    invoke-virtual {v4, v10}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDay(I)V

    .line 1275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 1276
    invoke-virtual {v13, v7, v9}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v15, v11, -0x1

    .line 1277
    invoke-virtual {v13, v6, v15}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x5

    .line 1278
    invoke-virtual {v13, v6, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xb

    .line 1279
    invoke-virtual {v13, v6, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 1280
    invoke-virtual {v13, v6, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 1281
    invoke-virtual {v13, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1282
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setDate(J)V

    .line 1283
    invoke-virtual {v4, v7}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->setIsUploaded(Z)V

    .line 1284
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 1285
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v8, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    .line 1286
    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 1287
    invoke-virtual {v2, v4}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->insert(Ljava/lang/Object;)J

    .line 1289
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getEcgValues()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 1290
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/DaoSession;->getECGItemInfoDao()Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;

    move-result-object v5

    .line 1291
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    invoke-virtual {v3}, Lcom/keephealth/android/ui/mine/bean/ResultEcg;->getEcgValues()Ljava/lang/String;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1293
    array-length v7, v3

    move v12, v8

    :goto_166
    if-ge v12, v7, :cond_18f

    aget-object v14, v3, v12

    .line 1294
    new-instance v15, Lcom/keephealth/android/greendao/bean/ECGItemInfo;

    invoke-direct {v15}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;-><init>()V

    .line 1295
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v15, v14}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setHr(F)V

    .line 1296
    invoke-virtual {v15, v9}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setYear(I)V

    .line 1297
    invoke-virtual {v15, v11}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setMonth(I)V

    .line 1298
    invoke-virtual {v15, v10}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDay(I)V

    move v14, v9

    .line 1299
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/keephealth/android/greendao/bean/ECGItemInfo;->setDate(J)V

    .line 1300
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move v9, v14

    const/4 v8, 0x0

    goto :goto_166

    .line 1302
    :cond_18f
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v7, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    .line 1303
    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, v4, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    .line 1304
    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    .line 1305
    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/gen/ECGItemInfoDao;->insertInTx(Ljava/lang/Iterable;)V

    goto/16 :goto_25

    :cond_1b4
    return-void
.end method
