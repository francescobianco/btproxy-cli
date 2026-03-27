.class public Lcom/keephealth/android/persenter/ecg/EcgPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "EcgPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/ecg/EcgContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/ecg/EcgContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/ecg/EcgContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordInfos()V
    .registers 13

    .line 16
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getEcgRecordInfoDao()Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/EcgRecordInfoDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 18
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/persenter/ecg/EcgPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/ecg/EcgContract$View;

    invoke-interface {v0, v3}, Lcom/keephealth/android/persenter/ecg/EcgContract$View;->getSuccess(Ljava/util/List;)V

    goto/16 :goto_1f2

    .line 24
    :cond_34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "-"

    if-ne v6, v1, :cond_8b

    .line 28
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 29
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v1

    .line 30
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v3

    .line 31
    new-instance v6, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-direct {v6}, Lcom/keephealth/android/model/bean/ECGRecordShowList;-><init>()V

    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setDateMonth(Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v6, v5}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 35
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1eb

    :cond_8b
    move v6, v4

    move v8, v6

    .line 37
    :goto_8d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1eb

    if-nez v4, :cond_d8

    .line 39
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 40
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v3

    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v6

    .line 42
    new-instance v8, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-direct {v8}, Lcom/keephealth/android/model/bean/ECGRecordShowList;-><init>()V

    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setDateMonth(Ljava/lang/String;)V

    .line 44
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d2
    move v11, v6

    move v6, v3

    move-object v3, v8

    move v8, v11

    goto/16 :goto_1e7

    .line 45
    :cond_d8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    if-ne v4, v9, :cond_178

    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v9

    if-ne v9, v6, :cond_108

    .line 47
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v9

    if-ne v9, v8, :cond_108

    .line 48
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v3, v5}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e7

    .line 52
    :cond_108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    new-instance v9, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-direct {v9}, Lcom/keephealth/android/model/bean/ECGRecordShowList;-><init>()V

    .line 55
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setDateMonth(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v9, v3}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 57
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 59
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v3

    .line 60
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v6

    .line 61
    new-instance v8, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-direct {v8}, Lcom/keephealth/android/model/bean/ECGRecordShowList;-><init>()V

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setDateMonth(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v8, v5}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 65
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 68
    :cond_178
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v9

    if-ne v9, v6, :cond_19a

    .line 69
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v9}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v9

    if-ne v9, v8, :cond_19a

    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e7

    .line 72
    :cond_19a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {v3, v6}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 75
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 77
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getYear()I

    move-result v3

    .line 78
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getMonth()I

    move-result v6

    .line 79
    new-instance v8, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-direct {v8}, Lcom/keephealth/android/model/bean/ECGRecordShowList;-><init>()V

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->setDateMonth(Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    :goto_1e7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8d

    .line 86
    :cond_1eb
    :goto_1eb
    iget-object v0, p0, Lcom/keephealth/android/persenter/ecg/EcgPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/ecg/EcgContract$View;

    invoke-interface {v0, v2}, Lcom/keephealth/android/persenter/ecg/EcgContract$View;->getSuccess(Ljava/util/List;)V

    :goto_1f2
    return-void
.end method
