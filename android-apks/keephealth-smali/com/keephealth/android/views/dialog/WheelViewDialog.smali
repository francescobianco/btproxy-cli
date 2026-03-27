.class public Lcom/keephealth/android/views/dialog/WheelViewDialog;
.super Landroid/app/Dialog;
.source "WheelViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;
    }
.end annotation


# instance fields
.field private onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

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
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    const v0, 0x7f0c00f7

    .line 83
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->setCancelable(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f0907ea

    .line 87
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView;

    const v0, 0x7f0907eb

    .line 88
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView;

    const v0, 0x7f0907ec

    .line 89
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView;

    const v0, 0x7f090786

    .line 90
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->tv_title1:Landroid/widget/TextView;

    const v0, 0x7f090787

    .line 91
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->tv_title2:Landroid/widget/TextView;

    const v0, 0x7f0900d4

    .line 92
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/WheelViewDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090561

    .line 94
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/WheelViewDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getTitle1()Landroid/widget/TextView;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->tv_title1:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle2()Landroid/widget/TextView;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->tv_title2:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView;

    return-object v0
.end method

.method public getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView;

    return-object v0
.end method

.method public getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView;

    return-object v0
.end method

.method synthetic lambda$init$0$com-keephealth-android-views-dialog-WheelViewDialog(Landroid/view/View;)V
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$init$1$com-keephealth-android-views-dialog-WheelViewDialog(Landroid/view/View;)V
    .registers 6

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    if-eqz p1, :cond_22

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->startOffset1:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->startOffset2:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView;

    invoke-virtual {v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->getCurrentItem()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->startOffset3:I

    add-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;->onSelect(III)V

    .line 98
    :cond_22
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnSelectClick(Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;

    return-void
.end method

.method public setStartOffset1(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->startOffset1:I

    return-void
.end method

.method public setStartOffset2(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->startOffset2:I

    return-void
.end method

.method public setStartOffset3(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialog;->startOffset3:I

    return-void
.end method
