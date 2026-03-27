.class public Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "MainMenuSetActivity.java"

# interfaces
.implements Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;


# instance fields
.field private closeMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
            ">;"
        }
    .end annotation
.end field

.field private hideAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

.field mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903de
    .end annotation
.end field

.field mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903df
    .end annotation
.end field

.field private mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

.field private openMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
            ">;"
        }
    .end annotation
.end field

.field private showAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0087

    return v0
.end method

.method protected initView()V
    .registers 6

    .line 42
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 43
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getMainMenuSetDao()Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->IsShow:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->TimtMillis:Lorg/greenrobot/greendao/Property;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->IsShow:Lorg/greenrobot/greendao/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/keephealth/android/greendao/gen/MainMenuSetDao$Properties;->TimtMillis:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->showAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    .line 50
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->showAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->setmClickListener(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    if-eqz v0, :cond_b4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b4

    .line 53
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->hideAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    .line 54
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->hideAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->setmClickListener(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;)V

    goto :goto_bb

    .line 57
    :cond_b4
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_bb
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->deleteAll()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mainMenuSetDao:Lcom/keephealth/android/greendao/gen/MainMenuSetDao;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/greendao/gen/MainMenuSetDao;->insertInTx(Ljava/lang/Iterable;)V

    const/16 v0, 0xc8

    .line 79
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 86
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusClick(Landroid/view/View;IZ)V
    .registers 5

    if-eqz p3, :cond_56

    .line 92
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_20

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10038e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->showToast(Ljava/lang/String;)V

    goto :goto_8a

    .line 96
    :cond_20
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    .line 97
    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->showAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->notifyDataSetChanged()V

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->hideAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    if-nez p1, :cond_52

    .line 102
    new-instance p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->hideAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    .line 103
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->hideAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->setmClickListener(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;)V

    goto :goto_8a

    .line 106
    :cond_52
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->notifyDataSetChanged()V

    goto :goto_8a

    .line 110
    :cond_56
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    const/4 p3, 0x1

    .line 111
    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->setIsShow(Z)V

    .line 112
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->openMenu:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->closeMenu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_80

    .line 115
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_85

    .line 117
    :cond_80
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->hideAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->notifyDataSetChanged()V

    .line 119
    :goto_85
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainMenuSetActivity;->showAdapter:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->notifyDataSetChanged()V

    :goto_8a
    return-void
.end method
