.class public Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "SelectWeekDayActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# instance fields
.field dialogView:Lcom/keephealth/android/childmodule/DialogView;

.field private isSelect:[Z

.field private lastModifiedIndex:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/WeekDayBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    return-void
.end method

.method private initDate()V
    .registers 13

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    const/4 v5, 0x6

    aget-boolean v4, v4, v5

    invoke-direct {v1, v3, v4}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;-><init>(Ljava/lang/String;Z)V

    .line 74
    new-instance v3, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    const/4 v4, 0x1

    aget-object v6, v0, v4

    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v2, v7, v2

    invoke-direct {v3, v6, v2}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;-><init>(Ljava/lang/String;Z)V

    .line 75
    new-instance v2, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    const/4 v6, 0x2

    aget-object v7, v0, v6

    iget-object v8, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v4, v8, v4

    invoke-direct {v2, v7, v4}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;-><init>(Ljava/lang/String;Z)V

    .line 76
    new-instance v4, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    const/4 v7, 0x3

    aget-object v8, v0, v7

    iget-object v9, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v6, v9, v6

    invoke-direct {v4, v8, v6}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;-><init>(Ljava/lang/String;Z)V

    .line 77
    new-instance v6, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    const/4 v8, 0x4

    aget-object v9, v0, v8

    iget-object v10, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v7, v10, v7

    invoke-direct {v6, v9, v7}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;-><init>(Ljava/lang/String;Z)V

    .line 78
    new-instance v7, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    const/4 v9, 0x5

    aget-object v10, v0, v9

    iget-object v11, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v8, v11, v8

    invoke-direct {v7, v10, v8}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;-><init>(Ljava/lang/String;Z)V

    .line 79
    new-instance v8, Lcom/keephealth/android/ui/device/bean/WeekDayBean;

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v5, v5, v9

    invoke-direct {v8, v0, v5}, Lcom/keephealth/android/ui/device/bean/WeekDayBean;-><init>(Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0081

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 46
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->titleName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "isSelect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    .line 63
    :cond_42
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "view"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->viewName:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->initDate()V

    .line 66
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->list:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

    .line 67
    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-SelectWeekDayActivity(Landroid/view/View;)V
    .registers 5

    .line 52
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v1, "isSelect"

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->finish()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 7

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_9e

    goto :goto_50

    .line 121
    :pswitch_6
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    const/4 v2, 0x5

    aget-boolean v3, v1, v2

    xor-int/2addr v3, v0

    aput-boolean v3, v1, v2

    .line 122
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    goto :goto_50

    .line 117
    :pswitch_11
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    const/4 v2, 0x4

    aget-boolean v3, v1, v2

    xor-int/2addr v3, v0

    aput-boolean v3, v1, v2

    .line 118
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    goto :goto_50

    .line 113
    :pswitch_1c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    const/4 v2, 0x3

    aget-boolean v3, v1, v2

    xor-int/2addr v3, v0

    aput-boolean v3, v1, v2

    .line 114
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    goto :goto_50

    .line 109
    :pswitch_27
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    const/4 v2, 0x2

    aget-boolean v3, v1, v2

    xor-int/2addr v3, v0

    aput-boolean v3, v1, v2

    .line 110
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    goto :goto_50

    .line 105
    :pswitch_32
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v2, v1, v0

    xor-int/2addr v2, v0

    aput-boolean v2, v1, v0

    .line 106
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    goto :goto_50

    .line 101
    :pswitch_3c
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aget-boolean v2, v1, p1

    xor-int/2addr v2, v0

    aput-boolean v2, v1, p1

    .line 102
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    goto :goto_50

    .line 97
    :pswitch_46
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    const/4 v2, 0x6

    aget-boolean v3, v1, v2

    xor-int/2addr v3, v0

    aput-boolean v3, v1, v2

    .line 98
    iput v2, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    .line 125
    :goto_50
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->viewName:Ljava/lang/String;

    if-eqz v1, :cond_9c

    const-string v2, "customTask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 127
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    array-length v2, v1

    :goto_5f
    if-ge p1, v2, :cond_69

    aget-boolean v3, v1, p1

    if-eqz v3, :cond_66

    goto :goto_9c

    :cond_66
    add-int/lit8 p1, p1, 0x1

    goto :goto_5f

    .line 133
    :cond_69
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->lastModifiedIndex:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9c

    .line 134
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->isSelect:[Z

    aput-boolean v0, v1, p1

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;->notifyItemChanged(I)V

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    if-eqz p1, :cond_87

    .line 137
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 138
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/DialogView;->show()V

    goto :goto_9c

    .line 141
    :cond_87
    new-instance p1, Lcom/keephealth/android/childmodule/DialogView;

    const p2, 0x7f100694

    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f100692

    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/keephealth/android/childmodule/DialogView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/SelectWeekDayActivity;->dialogView:Lcom/keephealth/android/childmodule/DialogView;

    :cond_9c
    :goto_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3c
        :pswitch_32
        :pswitch_27
        :pswitch_1c
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method
