.class public Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;
.super Landroid/app/Dialog;
.source "WheelViewDialogRadius.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;
    }
.end annotation


# instance fields
.field private onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;

.field private startOffset1:I

.field private startOffset2:I

.field private startOffset3:I

.field tv_title1:Landroid/widget/TextView;

.field wv_1:Lcom/keephealth/android/views/wheel/NewWheelView2;

.field wv_2:Lcom/keephealth/android/views/wheel/NewWheelView2;

.field wv_3:Lcom/keephealth/android/views/wheel/NewWheelView2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f110119

    .line 28
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    invoke-direct {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    const v0, 0x7f0c00f8

    .line 86
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->setCancelable(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v0, 0x7f0907ea

    .line 90
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView2;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView2;

    const v0, 0x7f0907eb

    .line 91
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView2;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    const v0, 0x7f0907ec

    .line 92
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/wheel/NewWheelView2;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    const v0, 0x7f090786

    .line 93
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->tv_title1:Landroid/widget/TextView;

    const v0, 0x7f0900d4

    .line 94
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090561

    .line 96
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getTitle1()Landroid/widget/TextView;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->tv_title1:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWv_1()Lcom/keephealth/android/views/wheel/NewWheelView2;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView2;

    return-object v0
.end method

.method public getWv_2()Lcom/keephealth/android/views/wheel/NewWheelView2;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    return-object v0
.end method

.method public getWv_3()Lcom/keephealth/android/views/wheel/NewWheelView2;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    return-object v0
.end method

.method synthetic lambda$init$0$com-keephealth-android-views-dialog-WheelViewDialogRadius(Landroid/view/View;)V
    .registers 2

    .line 95
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->dismiss()V

    return-void
.end method

.method synthetic lambda$init$1$com-keephealth-android-views-dialog-WheelViewDialogRadius(Landroid/view/View;)V
    .registers 6

    .line 97
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;

    if-eqz p1, :cond_22

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_1:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->startOffset1:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_2:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->startOffset2:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->wv_3:Lcom/keephealth/android/views/wheel/NewWheelView2;

    invoke-virtual {v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getCurrentItem()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->startOffset3:I

    add-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;->onSelect(III)V

    .line 100
    :cond_22
    invoke-virtual {p0}, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnSelectClick(Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->onSelectClick:Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;

    return-void
.end method

.method public setStartOffset1(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->startOffset1:I

    return-void
.end method

.method public setStartOffset2(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->startOffset2:I

    return-void
.end method

.method public setStartOffset3(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/keephealth/android/views/dialog/WheelViewDialogRadius;->startOffset3:I

    return-void
.end method
