.class public Lcom/keephealth/android/views/NotifyRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "NotifyRadioButton.java"


# instance fields
.field private context:Landroid/content/Context;

.field notify:Z

.field paint:Landroid/graphics/Paint;

.field radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/keephealth/android/views/NotifyRadioButton;->paint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/NotifyRadioButton;->radius:F

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/views/NotifyRadioButton;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public notify(Z)V
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/keephealth/android/views/NotifyRadioButton;->notify:Z

    .line 69
    invoke-virtual {p0}, Lcom/keephealth/android/views/NotifyRadioButton;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    iget-boolean v0, p0, Lcom/keephealth/android/views/NotifyRadioButton;->notify:Z

    if-eqz v0, :cond_8

    goto :goto_18

    .line 57
    :cond_8
    iget-object v0, p0, Lcom/keephealth/android/views/NotifyRadioButton;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    .line 58
    iget-object v7, p0, Lcom/keephealth/android/views/NotifyRadioButton;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_18
    return-void
.end method
