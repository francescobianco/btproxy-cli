.class public Lcom/keephealth/android/childmodule/activity/AddRewardActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "AddRewardActivity.java"


# instance fields
.field addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

.field binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

.field dialogView:Lcom/keephealth/android/childmodule/DialogView;

.field private icon:I

.field private iconId:I

.field private iconName:Ljava/lang/String;

.field private id:I

.field private isEdit:Z

.field private itemIconId:I

.field private itemId:I

.field private itemName:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;"
        }
    .end annotation
.end field

.field maxLength:I

.field private name:Ljava/lang/String;

.field private position:I

.field private register:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field tv_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;

    .line 55
    const-string v0, "100"

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconId:I

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->list:Ljava/util/List;

    .line 60
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->id:I

    const/16 v0, 0xa

    .line 65
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->maxLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->id:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->id:I

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconId:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconId:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->isEdit:Z

    return p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->register:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemId:I

    return p0
.end method

.method private truncateText(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1e

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1e
    return-object p1
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$5;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaAddrewardName:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$6;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaAddrewardIcon:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$7;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$8;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaDeleReword:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$9;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaAddrewardPrice:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$10;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 6

    .line 75
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 76
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 81
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "isEdit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->isEdit:Z

    .line 82
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemId:I

    .line 83
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->icon:I

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "iconId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemIconId:I

    .line 85
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->position:I

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemName:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->tvAddName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->isEdit:Z

    if-eqz v0, :cond_b5

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    iget v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->icon:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f10061f

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c5

    .line 93
    :cond_b5
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f1005cb

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_c5
    :goto_c5
    iget v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemIconId:I

    if-nez v0, :cond_cd

    const/16 v0, 0x64

    .line 97
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemIconId:I

    .line 99
    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->addrewardImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->itemIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->setIconId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 102
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->register:Landroidx/activity/result/ActivityResultLauncher;

    .line 134
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->isEdit:Z

    if-eqz v0, :cond_129

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaDeleReword:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_132

    .line 137
    :cond_129
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->relaDeleReword:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    :goto_132
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->addRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->deleRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->updateRewardNameModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->tvAddName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->tv_name:Ljava/lang/String;

    return-void
.end method
