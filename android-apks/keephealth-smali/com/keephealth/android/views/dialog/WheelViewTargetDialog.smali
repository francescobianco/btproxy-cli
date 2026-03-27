.class public Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;
.super Landroid/app/Dialog;
.source "WheelViewTargetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$OnSelectClick;
    }
.end annotation


# instance fields
.field private onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$OnSelectClick;

.field private startOffset1:I

.field private startOffset2:I

.field private startOffset3:I

.field tv_title1:Landroid/widget/TextView;

.field tv_title2:Landroid/widget/TextView;

.field wv_1:Lcom/keephealth/android/views/wheel/NewWheelView;

.field wv_2:Lcom/keephealth/android/views/wheel/NewWheelView;

.field wv_3:Lcom/keephealth/android/views/wheel/NewWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f110119

    .line 22
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    const v0, 0x7f0c00f0

    .line 84
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->setCancelable(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f0907ea

    .line 88
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView;

    const v0, 0x7f0907eb

    .line 89
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView;

    const v0, 0x7f0907ec

    .line 90
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView;

    const v0, 0x7f090786

    .line 91
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->tv_title1:Landroid/widget/TextView;

    const v0, 0x7f090787

    .line 92
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->tv_title2:Landroid/widget/TextView;

    const v0, 0x7f0900d4

    .line 93
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090561

    .line 95
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getTitle1()Landroid/widget/TextView;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->tv_title1:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle2()Landroid/widget/TextView;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->tv_title2:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView;

    return-object v0
.end method

.method public getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView;

    return-object v0
.end method

.method public getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView;

    return-object v0
.end method

.method synthetic lambda$init$0$com-keephealth-android-views-dialog-WheelViewTargetDialog(Landroid/view/View;)V
    .registers 2

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$init$1$com-keephealth-android-views-dialog-WheelViewTargetDialog(Landroid/view/View;)V
    .registers 6

    .line 96
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$OnSelectClick;

    if-eqz p1, :cond_22

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->startOffset1:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->startOffset2:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->startOffset3:I

    add-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$OnSelectClick;->onSelect(III)V

    .line 99
    :cond_22
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnSelectClick(Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$OnSelectClick;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewTargetDialog$OnSelectClick;

    return-void
.end method

.method public setStartOffset1(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->startOffset1:I

    return-void
.end method

.method public setStartOffset2(I)V
    .registers 2

    .line 75
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->startOffset2:I

    return-void
.end method

.method public setStartOffset3(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewTargetDialog;->startOffset3:I

    return-void
.end method
