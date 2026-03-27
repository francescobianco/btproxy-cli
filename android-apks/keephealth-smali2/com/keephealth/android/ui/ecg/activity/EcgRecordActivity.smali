.class public Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "EcgRecordActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/ecg/EcgContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/ecg/EcgPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/ecg/EcgContract$View;"
    }
.end annotation


# instance fields
.field private final REQEST_DELETE_RECORD:I

.field layoutNoData:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090318
    .end annotation
.end field

.field private mAdapter:Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;

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
            "Lcom/keephealth/android/model/bean/ECGRecordShowList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    const/16 v0, 0x3e8

    .line 32
    iput v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->REQEST_DELETE_RECORD:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mParentIndex:I

    .line 47
    iput v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mChildIndex:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->showList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c004f

    return v0
.end method

.method public getSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/ECGRecordShowList;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->showList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_28

    .line 57
    :cond_c
    new-instance v1, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mAdapter:Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;

    .line 58
    iget-object v2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 59
    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    goto :goto_34

    .line 54
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->layoutNoData:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    :goto_34
    return-void
.end method

.method protected initView()V
    .registers 4

    .line 41
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10028c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/ecg/EcgPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/ecg/EcgPresenter;->getRecordInfos()V

    return-void
.end method

.method synthetic lambda$getSuccess$0$com-keephealth-android-ui-ecg-activity-EcgRecordActivity(Ljava/util/List;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 8

    .line 61
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4a

    .line 62
    iput p4, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mParentIndex:I

    .line 63
    iput p5, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mChildIndex:I

    .line 64
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/Serializable;

    const-string p6, "recordInfo"

    invoke-virtual {p2, p6, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/EcgRecordInfo;->getDate()J

    move-result-wide p3

    const-string p1, "measureTime"

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    const-class p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    const/16 p3, 0x3e8

    invoke-static {p0, p1, p2, p3}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    :cond_4a
    const/4 p1, 0x0

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_8

    return-void

    :cond_8
    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_5c

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->showList:Ljava/util/List;

    iget p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mParentIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mChildIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->showList:Ljava/util/List;

    iget p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mParentIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/ECGRecordShowList;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/ECGRecordShowList;->getRecordInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3a

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->showList:Ljava/util/List;

    iget p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mParentIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_3a
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->showList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x8

    if-nez p1, :cond_50

    .line 86
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->layoutNoData:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    goto :goto_5c

    .line 89
    :cond_50
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->layoutNoData:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->mAdapter:Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->showList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;->setDate(Ljava/util/List;)V

    :cond_5c
    :goto_5c
    return-void
.end method
