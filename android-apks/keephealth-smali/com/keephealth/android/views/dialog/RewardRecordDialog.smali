.class public Lcom/keephealth/android/views/dialog/RewardRecordDialog;
.super Landroid/app/Dialog;
.source "RewardRecordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;
    }
.end annotation


# instance fields
.field adapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectClick:Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;

.field private recyclew:Landroidx/recyclerview/widget/RecyclerView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p3, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->mList:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSixMonthBean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f110119

    .line 31
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->mList:Ljava/util/List;

    .line 33
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/dialog/RewardRecordDialog;)Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;

    return-object p0
.end method

.method private init()V
    .registers 4

    const v0, 0x7f0c00e7

    .line 64
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->setCancelable(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f0904a5

    .line 70
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->recyclew:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

    const v1, 0x7f0c00e8

    iget-object v2, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->mList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->recyclew:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->recyclew:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;

    new-instance v1, Lcom/keephealth/android/views/dialog/RewardRecordDialog$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog$1;-><init>(Lcom/keephealth/android/views/dialog/RewardRecordDialog;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordYearAdapter$OnItemClickListener;)V

    const v0, 0x7f0900d4

    .line 117
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/RewardRecordDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/dialog/RewardRecordDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090561

    .line 119
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/RewardRecordDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/dialog/RewardRecordDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$init$0$com-keephealth-android-views-dialog-RewardRecordDialog(Landroid/view/View;)V
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$init$1$com-keephealth-android-views-dialog-RewardRecordDialog(Landroid/view/View;)V
    .registers 4

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "title11:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GG314"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;

    if-eqz p1, :cond_35

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "title22:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;->onSelect(Ljava/lang/String;)V

    .line 125
    :cond_35
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnSelectClick(Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/RewardRecordDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/RewardRecordDialog$OnSelectClick;

    return-void
.end method
