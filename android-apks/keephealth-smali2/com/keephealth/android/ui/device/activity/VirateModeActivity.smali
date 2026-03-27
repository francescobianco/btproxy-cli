.class public Lcom/keephealth/android/ui/device/activity/VirateModeActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "VirateModeActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

.field private languageBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/VibrateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;

.field private mode:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public getFail()V
    .registers 1

    return-void
.end method

.method public getSuccess(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/LanguageBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    return-object v0
.end method

.method public goBack()V
    .registers 1

    return-void
.end method

.method protected initView()V
    .registers 9

    .line 40
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->toBack()V

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->name:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->mode:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_db

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    packed-switch v6, :pswitch_data_1b4

    goto :goto_6f

    :pswitch_39
    const-string v6, "5"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_6f

    :cond_42
    move v7, v1

    goto :goto_6f

    :pswitch_44
    const-string v6, "4"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_6f

    :cond_4d
    move v7, v2

    goto :goto_6f

    :pswitch_4f
    const-string v6, "3"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_6f

    :cond_58
    move v7, v3

    goto :goto_6f

    :pswitch_5a
    const-string v6, "2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_6f

    :cond_63
    move v7, v4

    goto :goto_6f

    :pswitch_65
    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v7, v5

    :goto_6f
    packed-switch v7, :pswitch_data_1c2

    goto :goto_db

    .line 59
    :pswitch_73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100748

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_db

    .line 56
    :pswitch_88
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1004ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_db

    .line 53
    :pswitch_9d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100746

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_db

    .line 50
    :pswitch_b2
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100132

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_db

    .line 47
    :pswitch_c7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10018e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_db
    :goto_db
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v0, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/VibrateBean;-><init>()V

    .line 65
    invoke-virtual {v0, v5}, Lcom/keephealth/android/model/bean/VibrateBean;->setType(I)V

    .line 66
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10045c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v5}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 68
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/VibrateBean;-><init>()V

    .line 70
    invoke-virtual {v0, v4}, Lcom/keephealth/android/model/bean/VibrateBean;->setType(I)V

    .line 71
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1005b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v4}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 73
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/VibrateBean;-><init>()V

    .line 75
    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setType(I)V

    .line 76
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1005b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 78
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/VibrateBean;-><init>()V

    .line 80
    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/VibrateBean;->setType(I)V

    .line 81
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 83
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/VibrateBean;-><init>()V

    .line 85
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/VibrateBean;->setType(I)V

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1005b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/VibrateBean;-><init>()V

    const/4 v1, 0x5

    .line 90
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/VibrateBean;->setType(I)V

    .line 91
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1005b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/model/bean/VibrateBean;->setMode(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/VibrateBean;->setStyle(I)V

    .line 93
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->mode:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;

    .line 95
    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->binding:Lcom/keephealth/android/databinding/ActivityVirateModeBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityVirateModeBinding;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :pswitch_data_1b4
    .packed-switch 0x31
        :pswitch_65
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_39
    .end packed-switch

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_b2
        :pswitch_9d
        :pswitch_88
        :pswitch_73
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 106
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/VibrateBean;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/VibrateBean;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/VibrateBean;->getStyle()I

    move-result p2

    const-string v0, "style"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 110
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->setResult(ILandroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/VirateModeActivity;->finish()V

    return-void
.end method

.method public showNetError(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
