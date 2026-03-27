.class public Lcom/keephealth/android/views/SelectDateLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SelectDateLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field ivSelectedDate:Landroid/view/View;

.field rbDay:Landroid/view/View;

.field rbOneMonth:Landroid/view/View;

.field rbSixMonth:Landroid/view/View;

.field rbYear:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .line 27
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090484

    .line 28
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SelectDateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbDay:Landroid/view/View;

    const v0, 0x7f090485

    .line 29
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SelectDateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbOneMonth:Landroid/view/View;

    const v0, 0x7f090486

    .line 30
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SelectDateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbSixMonth:Landroid/view/View;

    const v0, 0x7f090487

    .line 31
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SelectDateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbYear:Landroid/view/View;

    const v0, 0x7f0902cd

    .line 32
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SelectDateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->ivSelectedDate:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbDay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbOneMonth:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbSixMonth:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->rbYear:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_29

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 p2, 0x8

    packed-switch p1, :pswitch_data_2a

    goto :goto_29

    .line 54
    :pswitch_12
    iget-object p1, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->ivSelectedDate:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    .line 51
    :pswitch_18
    iget-object p1, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->ivSelectedDate:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    .line 48
    :pswitch_1e
    iget-object p1, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->ivSelectedDate:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    .line 45
    :pswitch_24
    iget-object p1, p0, Lcom/keephealth/android/views/SelectDateLinearLayout;->ivSelectedDate:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    :goto_29
    return v1

    :pswitch_data_2a
    .packed-switch 0x7f090484
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method
