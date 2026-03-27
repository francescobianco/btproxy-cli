.class public Lcom/keephealth/android/persenter/main/WeightDetailPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "WeightDetailPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/WeightDetailContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/main/WeightDetailContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/WeightDetailContract$Presenter;"
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
    .registers 15

    .line 24
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightDataDao()Lcom/keephealth/android/greendao/gen/WeightDataDao;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/keephealth/android/greendao/gen/WeightDataDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 27
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/WeightDetailContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/main/WeightDetailContract$View;->returnRecordInfos(Ljava/util/List;)V

    goto/16 :goto_132

    .line 31
    :cond_34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v5, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-direct {v5}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;-><init>()V

    .line 35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/main/bean/WeightData;->getYear()I

    move-result v6

    .line 36
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v7}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMonth()I

    move-result v7

    move v8, v4

    .line 37
    :goto_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_12b

    .line 38
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getYear()I

    move-result v9

    const/4 v10, 0x0

    if-ne v9, v6, :cond_78

    .line 39
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMonth()I

    move-result v9

    if-ne v9, v7, :cond_78

    goto :goto_c6

    .line 42
    :cond_78
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v10

    :goto_7d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/keephealth/android/ui/main/bean/ChildEntity;

    .line 43
    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/ChildEntity;->getWeightData()Lcom/keephealth/android/ui/main/bean/WeightData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v9

    add-float/2addr v7, v9

    goto :goto_7d

    .line 45
    :cond_93
    invoke-virtual {v5, v3}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v7, v3

    invoke-virtual {v5, v7}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->setAvgWeight(F)V

    .line 47
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/bean/WeightData;->getYear()I

    move-result v3

    .line 49
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/main/bean/WeightData;->getMonth()I

    move-result v5

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v7, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-direct {v7}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;-><init>()V

    move-object v12, v6

    move v6, v3

    move-object v3, v12

    move-object v13, v7

    move v7, v5

    move-object v5, v13

    .line 53
    :goto_c6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->setDateMonth(Ljava/lang/String;)V

    .line 54
    new-instance v9, Lcom/keephealth/android/ui/main/bean/ChildEntity;

    invoke-direct {v9}, Lcom/keephealth/android/ui/main/bean/ChildEntity;-><init>()V

    .line 55
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/main/bean/WeightData;

    invoke-virtual {v9, v11}, Lcom/keephealth/android/ui/main/bean/ChildEntity;->setWeightData(Lcom/keephealth/android/ui/main/bean/WeightData;)V

    .line 56
    iput-boolean v4, v9, Lcom/keephealth/android/ui/main/bean/ChildEntity;->isOpen:Z

    if-nez v8, :cond_f4

    .line 58
    iput-boolean v1, v9, Lcom/keephealth/android/ui/main/bean/ChildEntity;->isOpen:Z

    .line 60
    :cond_f4
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    if-ne v8, v9, :cond_127

    .line 63
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_102
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_118

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/ui/main/bean/ChildEntity;

    .line 64
    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/ChildEntity;->getWeightData()Lcom/keephealth/android/ui/main/bean/WeightData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/ui/main/bean/WeightData;->getWeight()F

    move-result v11

    add-float/2addr v10, v11

    goto :goto_102

    .line 66
    :cond_118
    invoke-virtual {v5, v3}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v10, v9

    invoke-virtual {v5, v10}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->setAvgWeight(F)V

    .line 68
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_127
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_58

    .line 71
    :cond_12b
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/WeightDetailContract$View;

    invoke-interface {v0, v2}, Lcom/keephealth/android/persenter/main/WeightDetailContract$View;->returnRecordInfos(Ljava/util/List;)V

    :goto_132
    return-void
.end method

.method public getWeightHistory()V
    .registers 5

    .line 17
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightDataDao()Lcom/keephealth/android/greendao/gen/WeightDataDao;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WeightDataDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v1, Lcom/keephealth/android/persenter/main/WeightDetailContract$View;

    invoke-interface {v1, v0}, Lcom/keephealth/android/persenter/main/WeightDetailContract$View;->returnWeightList(Ljava/util/List;)V

    return-void
.end method
