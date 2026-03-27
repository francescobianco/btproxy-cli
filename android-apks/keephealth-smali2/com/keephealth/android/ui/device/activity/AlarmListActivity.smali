.class public Lcom/keephealth/android/ui/device/activity/AlarmListActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "AlarmListActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/AlarmContract$View;
.implements Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;
.implements Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/AlarmPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/AlarmContract$View;",
        "Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;",
        "Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private editIndex:I

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private maxAlarmClockCount:I

.field private totalAlarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/Alarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    const/16 v0, 0x8

    .line 45
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->maxAlarmClockCount:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->editIndex:I

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0020

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 3

    .line 59
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseMvpActivity;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 60
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result p1

    const/16 v0, 0x130

    if-eq p1, v0, :cond_c

    goto :goto_f

    .line 62
    :cond_c
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    :goto_f
    return-void
.end method

.method protected initView()V
    .registers 6

    .line 68
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    const v0, 0x7f0903dc

    .line 69
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_4f

    .line 76
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->getMaxAlarmClockCount()I

    move-result v3

    if-nez v3, :cond_4f

    .line 77
    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/DeviceModel;->setMaxAlarmClockCount(I)V

    .line 80
    :cond_4f
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->rightText:Landroid/widget/Button;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/AlarmListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/keephealth/android/ui/device/activity/AlarmListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/AlarmListActivity;Lcom/keephealth/android/model/bean/DeviceModel;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getAlarms()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    if-eqz v0, :cond_6d

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_72

    .line 95
    :cond_6d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->bgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :goto_72
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    .line 98
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setCustomClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-AlarmListActivity(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/view/View;)V
    .registers 3

    .line 0
    if-eqz p1, :cond_8

    .line 82
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->getMaxAlarmClockCount()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->maxAlarmClockCount:I

    .line 84
    :cond_8
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->maxAlarmClockCount:I

    if-lt p1, p2, :cond_23

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100123

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_23
    const-class p1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_8

    return-void

    :cond_8
    const/4 p2, 0x1

    .line 151
    const-string v0, "alarm"

    if-eq p1, p2, :cond_70

    const/4 v1, 0x3

    if-eq p1, v1, :cond_12

    goto/16 :goto_9c

    :cond_12
    if-eqz p3, :cond_6f

    .line 166
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 167
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/Alarm;

    .line 168
    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->editIndex:I

    invoke-interface {p3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    iget p3, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->editIndex:I

    add-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    .line 171
    :cond_30
    const-string p1, ""

    const-string p2, "\u95f9\u949f\u8bbe\u7f6e\u7684\u56de\u8c03=\u5220\u9664"

    invoke-static {p1, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    iget p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->editIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    :goto_3e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 181
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    .line 182
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 183
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setCustomClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;)V

    .line 186
    :cond_5e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setList(Ljava/util/List;)V

    .line 187
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/AlarmPresenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/device/AlarmPresenter;->saveAlarmToDevice(Ljava/util/List;)V

    goto :goto_9c

    :cond_6f
    return-void

    .line 153
    :cond_70
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->bgView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/Alarm;

    .line 155
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    if-nez p2, :cond_87

    .line 156
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    .line 158
    :cond_87
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setList(Ljava/util/List;)V

    .line 161
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/AlarmPresenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/device/AlarmPresenter;->saveAlarmToDevice(Ljava/util/List;)V

    :goto_9c
    return-void
.end method

.method public onCustomClick(Landroid/view/View;I)V
    .registers 5

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090059

    if-eq p1, v0, :cond_68

    const v0, 0x7f090322

    if-eq p1, v0, :cond_10

    goto/16 :goto_8f

    .line 112
    :cond_10
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_26

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->bgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    .line 116
    :cond_26
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_2d
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/AlarmPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/persenter/device/AlarmPresenter;->saveAlarmToDevice(Ljava/util/List;)V

    .line 120
    :try_start_36
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 121
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    .line 122
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;)V

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->setCustomClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;)V

    goto :goto_8f

    .line 126
    :cond_57
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->notifyItemRemoved(I)V

    .line 127
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->notifyItemRangeChanged(II)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_67} :catch_8f

    goto :goto_8f

    .line 107
    :cond_68
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/Alarm;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/Alarm;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/Alarm;->getOn_off()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/Alarm;->setOn_off(Z)V

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->notifyItemChanged(I)V

    .line 109
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast p1, Lcom/keephealth/android/persenter/device/AlarmPresenter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/persenter/device/AlarmPresenter;->saveAlarmToDevice(Ljava/util/List;)V

    :catch_8f
    :goto_8f
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .line 138
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->editIndex:I

    .line 139
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->totalAlarms:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/Alarm;

    .line 140
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string v0, "alarm"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 142
    const-class p1, Lcom/keephealth/android/ui/device/activity/AlarmAddActivity;

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method public saveFaild()V
    .registers 1

    return-void
.end method

.method public saveSuccess()V
    .registers 1

    return-void
.end method
