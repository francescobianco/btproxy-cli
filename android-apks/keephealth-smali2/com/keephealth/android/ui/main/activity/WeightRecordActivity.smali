.class public Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "WeightRecordActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/WeightDetailContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/main/WeightDetailPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/main/WeightDetailContract$View;"
    }
.end annotation


# instance fields
.field private isDelete:Z

.field layoutNoData:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090318
    .end annotation
.end field

.field private mAdapter:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

.field private mChildIndex:I

.field private mParentIndex:I

.field mRecyclerView:Landroid/widget/ExpandableListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mParentIndex:I

    .line 44
    iput v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mChildIndex:I

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    .line 80
    iput-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->isDelete:Z

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c004f

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 37
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1007aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/main/WeightDetailPresenter;->getRecordInfos()V

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method synthetic lambda$returnRecordInfos$0$com-keephealth-android-ui-main-activity-WeightRecordActivity(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 7

    .line 66
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWeightDataDao()Lcom/keephealth/android/greendao/gen/WeightDataDao;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/ui/main/bean/ChildEntity;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/ChildEntity;->getWeightData()Lcom/keephealth/android/ui/main/bean/WeightData;

    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lcom/keephealth/android/greendao/gen/WeightDataDao;->delete(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4b

    .line 71
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_4b
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->setDate(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->isDelete:Z

    return p1
.end method

.method public onBackPressed()V
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->isDelete:Z

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->setResult(I)V

    .line 86
    :cond_8
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->finish()V

    return-void
.end method

.method public returnRecordInfos(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_36

    .line 60
    :cond_e
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->layoutNoData:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 62
    new-instance p1, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->showList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 64
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 65
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mAdapter:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    new-instance v0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->setOnSwipeChildClickListener(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;)V

    goto :goto_40

    .line 57
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->layoutNoData:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :goto_40
    return-void
.end method

.method public returnWeightList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
