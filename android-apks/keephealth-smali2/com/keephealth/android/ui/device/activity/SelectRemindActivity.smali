.class public Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "SelectRemindActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# instance fields
.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

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

    .line 39
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->titleName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "iPosition"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;

    invoke-direct {v2, p0, v1, v0}, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;

    .line 47
    invoke-virtual {v2, p0}, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_49
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 56
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "iPosition"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p2, 0xc8

    .line 60
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SelectRemindActivity;->finish()V

    return-void
.end method
