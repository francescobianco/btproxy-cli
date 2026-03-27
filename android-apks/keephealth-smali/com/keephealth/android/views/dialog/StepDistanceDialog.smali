.class public Lcom/keephealth/android/views/dialog/StepDistanceDialog;
.super Landroid/app/Dialog;
.source "StepDistanceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;
    }
.end annotation


# instance fields
.field private onSelectClick:Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;

.field private title:Ljava/lang/String;

.field private titleName:Ljava/lang/String;

.field tv_calories:Landroid/widget/TextView;

.field tv_distance:Landroid/widget/TextView;

.field tv_step:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-object p3, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->titleName:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f110119

    .line 26
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p2, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->titleName:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/dialog/StepDistanceDialog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;

    return-object p0
.end method

.method private init()V
    .registers 3

    const v0, 0x7f0c00ef

    .line 54
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f090779

    .line 58
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_step:Landroid/widget/TextView;

    const v0, 0x7f090725

    .line 59
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_calories:Landroid/widget/TextView;

    const v0, 0x7f090735

    .line 60
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_distance:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_step:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_step:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog$1;-><init>(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_calories:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/views/dialog/StepDistanceDialog$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog$2;-><init>(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->tv_distance:Landroid/widget/TextView;

    new-instance v1, Lcom/keephealth/android/views/dialog/StepDistanceDialog$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog$3;-><init>(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d4

    .line 117
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/StepDistanceDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090561

    .line 119
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/StepDistanceDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/dialog/StepDistanceDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$init$0$com-keephealth-android-views-dialog-StepDistanceDialog(Landroid/view/View;)V
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$init$1$com-keephealth-android-views-dialog-StepDistanceDialog(Landroid/view/View;)V
    .registers 4

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "title11:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GG314"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;

    if-eqz p1, :cond_35

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "title22:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;

    iget-object v0, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;->onSelect(Ljava/lang/String;)V

    .line 125
    :cond_35
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnSelectClick(Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;

    return-void
.end method
