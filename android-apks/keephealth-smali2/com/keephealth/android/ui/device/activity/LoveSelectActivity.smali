.class public Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "LoveSelectActivity.java"

# interfaces
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# instance fields
.field private love:I

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    .line 25
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->symptomBeans:Ljava/util/List;

    return-void
.end method

.method private initData()V
    .registers 8

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->symptomBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 66
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_2b

    .line 67
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->symptomBeans:Ljava/util/List;

    new-instance v4, Lcom/keephealth/android/ui/device/bean/SymptomBean;

    aget-object v5, v0, v2

    iget v6, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->love:I

    if-ne v2, v6, :cond_21

    const/4 v6, 0x1

    goto :goto_22

    :cond_21
    move v6, v1

    :goto_22
    invoke-direct {v4, v2, v5, v6}, Lcom/keephealth/android/ui/device/bean/SymptomBean;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2b
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

    const v0, 0x7f0903dc

    .line 40
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1007d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "MakeLove"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->love:I

    .line 46
    :cond_36
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->initData()V

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->symptomBeans:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    .line 49
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->rightText:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->rightText:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->rightText:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-LoveSelectActivity(Landroid/view/View;)V
    .registers 5

    .line 54
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "backMakeLove"

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->love:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0xc8

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->finish()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 6

    .line 73
    iget p1, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->love:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_2e

    if-eq p1, v0, :cond_1a

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->symptomBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/SymptomBean;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/bean/SymptomBean;->setSelect(Z)V

    .line 76
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->love:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->notifyItemChanged(I)V

    .line 78
    :cond_1a
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->symptomBeans:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/SymptomBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/bean/SymptomBean;->setSelect(Z)V

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->notifyItemChanged(I)V

    .line 80
    iput p2, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->love:I

    goto :goto_40

    .line 82
    :cond_2e
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->symptomBeans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/SymptomBean;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/bean/SymptomBean;->setSelect(Z)V

    .line 83
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->love:I

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->notifyItemChanged(I)V

    :goto_40
    return-void
.end method
