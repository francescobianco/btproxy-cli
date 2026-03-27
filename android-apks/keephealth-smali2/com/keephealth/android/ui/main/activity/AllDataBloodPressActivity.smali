.class public Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "AllDataBloodPressActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

.field private isDelete:Z

.field mAdapter:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

.field viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->isDelete:Z

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->upload:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 15

    .line 45
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 46
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    .line 47
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->toBack()V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v2, 0x7f100662

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao$Properties;->FzValue:Lorg/greenrobot/greendao/Property;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    const/16 v3, 0x8

    if-eqz v0, :cond_15a

    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15a

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v6, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-direct {v6}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;-><init>()V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result v7

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v8

    move v9, v1

    .line 61
    :goto_90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_121

    .line 62
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result v10

    if-ne v10, v7, :cond_af

    .line 63
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v10

    if-ne v10, v8, :cond_af

    goto :goto_dc

    .line 65
    :cond_af
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 66
    invoke-virtual {v6, v5}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 67
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result v5

    .line 69
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v6

    .line 70
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v8, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-direct {v8}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;-><init>()V

    move-object v12, v7

    move v7, v5

    move-object v5, v12

    move-object v13, v8

    move v8, v6

    move-object v6, v13

    .line 73
    :goto_dc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->setDateMonth(Ljava/lang/String;)V

    .line 74
    new-instance v10, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    invoke-direct {v10}, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;-><init>()V

    .line 75
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v10, v11}, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->setWeightData(Lcom/keephealth/android/greendao/bean/HealthBloodItem;)V

    .line 76
    iput-boolean v1, v10, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->isOpen:Z

    if-nez v9, :cond_10a

    .line 78
    iput-boolean v2, v10, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->isOpen:Z

    .line 80
    :cond_10a
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    if-ne v9, v10, :cond_11d

    .line 82
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 83
    invoke-virtual {v6, v5}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->setRecordInfos(Ljava/util/List;)V

    .line 84
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_90

    .line 87
    :cond_121
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_168

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->layoutNoData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 90
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 92
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    invoke-direct {v0, p0, v4}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->mRecyclerView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v4}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->setOnSwipeChildClickListener(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;)V

    goto :goto_168

    .line 111
    :cond_15a
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->layoutNoData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :cond_168
    :goto_168
    return-void
.end method

.method synthetic lambda$createObserver$1$com-keephealth-android-ui-main-activity-AllDataBloodPressActivity(Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->hideLoading()V

    .line 120
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->getGroupCount()I

    move-result p1

    if-nez p1, :cond_26

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->layoutNoData:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->binding:Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAllDataBloodPressBinding;->mRecyclerView:Landroid/widget/ExpandableListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :cond_26
    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-main-activity-AllDataBloodPressActivity(Ljava/util/List;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 11

    .line 96
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getHealthBloodItemDao()Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;

    move-result-object p2

    .line 97
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->getWeightData()Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    move-result-object p3

    .line 98
    iget-object p6, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->viewModel:Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getYear()I

    move-result p7

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getMonth()I

    move-result v0

    invoke-virtual {p3}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDay()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p6, p7, v0, v1, v2}, Lcom/keephealth/android/ui/main/viewmodel/InputBloodPressViewModel;->setBloodPress(IIIZ)V

    .line 99
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->showLoading()V

    .line 100
    invoke-virtual {p2, p3}, Lcom/keephealth/android/greendao/gen/HealthBloodItemDao;->delete(Ljava/lang/Object;)V

    .line 101
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/AllDataRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_58

    .line 103
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    :cond_58
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->setDate(Ljava/util/List;)V

    .line 106
    iput-boolean v2, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->isDelete:Z

    return v2
.end method

.method public onBackPressed()V
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->isDelete:Z

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->setResult(I)V

    .line 134
    :cond_8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/AllDataBloodPressActivity;->finish()V

    return-void
.end method
