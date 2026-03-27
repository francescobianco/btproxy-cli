.class public Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "SymptomSelectActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# instance fields
.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private symptomBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/SymptomBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->symptomBeans:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->selected:Ljava/util/List;

    return-void
.end method

.method private initData()V
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->symptomBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_2d

    .line 72
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->symptomBeans:Ljava/util/List;

    new-instance v3, Lcom/keephealth/android/ui/device/bean/SymptomBean;

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->selected:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Lcom/keephealth/android/ui/device/bean/SymptomBean;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2d
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

    .line 43
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    const v0, 0x7f0903dc

    .line 44
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1007d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "Symptom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->selected:Ljava/util/List;

    .line 50
    :cond_49
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->initData()V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->symptomBeans:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    .line 53
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-SymptomSelectActivity(Landroid/view/View;)V
    .registers 5

    .line 58
    const-string p1, ","

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->selected:Ljava/util/List;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v2, "backSymptom"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0xc8

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->finish()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->selected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->selected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 81
    :cond_16
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;->selected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    return-void
.end method
