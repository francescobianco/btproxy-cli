.class public Lcom/keephealth/android/views/CustomToggleButton;
.super Landroid/view/View;
.source "CustomToggleButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/CustomToggleButton$Callback;,
        Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;
    }
.end annotation


# instance fields
.field private callback:Lcom/keephealth/android/views/CustomToggleButton$Callback;

.field private currentX:F

.field private dis:F

.field private isSlipping:Z

.field private isSwitchOn:Z

.field public isTouchEnable:Z

.field private off_Rect:Landroid/graphics/Rect;

.field private onSwitchListener:Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;

.field private on_Rect:Landroid/graphics/Rect;

.field paint:Landroid/graphics/Paint;

.field private previousX:F

.field private rectPadding:I

.field private slip_Btn:Landroid/graphics/Bitmap;

.field private switch_off_Bkg:Landroid/graphics/Bitmap;

.field private switch_on_Bkg:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isTouchEnable:Z

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSlipping:Z

    .line 28
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    const/4 p1, 0x3

    .line 36
    iput p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    .line 40
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    .line 41
    :cond_1c
    invoke-direct {p0}, Lcom/keephealth/android/views/CustomToggleButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isTouchEnable:Z

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSlipping:Z

    .line 28
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    const/4 p1, 0x3

    .line 36
    iput p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    .line 46
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    .line 47
    :cond_1c
    invoke-direct {p0}, Lcom/keephealth/android/views/CustomToggleButton;->init()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 51
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/CustomToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/CustomToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0327

    const v1, 0x7f0d032a

    const v2, 0x7f0d0328

    .line 53
    invoke-virtual {p0, v2, v0, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setImageResource(III)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/keephealth/android/views/CustomToggleButton$Callback;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->callback:Lcom/keephealth/android/views/CustomToggleButton$Callback;

    return-object v0
.end method

.method public getSwitchState()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_30

    .line 239
    iget-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isSwitchOn:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->onSwitchListener:Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;

    if-eqz p1, :cond_2d

    .line 243
    iget-boolean v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;->onSwitched(Z)V

    .line 245
    :cond_2d
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->invalidate()V

    :cond_30
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget-boolean v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSlipping:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    .line 113
    iget v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->currentX:F

    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_24

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    goto :goto_30

    .line 116
    :cond_24
    iget v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->currentX:F

    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 118
    :goto_30
    iget-boolean v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSlipping:Z

    if-eqz v2, :cond_59

    iget v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->currentX:F

    iget-object v3, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_59

    .line 119
    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a8

    .line 121
    :cond_59
    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a8

    .line 125
    :cond_6f
    iget-boolean v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    if-eqz v0, :cond_8e

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->on_Rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 127
    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_a8

    .line 129
    :cond_8e
    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->off_Rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 130
    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/keephealth/android/views/CustomToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_a8
    cmpg-float v2, v0, v1

    if-gez v2, :cond_ad

    goto :goto_cf

    .line 137
    :cond_ad
    iget-object v1, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_ce

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    goto :goto_cf

    :cond_ce
    move v1, v0

    .line 141
    :goto_cf
    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/CustomToggleButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 148
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 149
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_1b

    .line 151
    :cond_b
    iget-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    .line 157
    :goto_1b
    iget-object p2, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/CustomToggleButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 162
    iget-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->callback:Lcom/keephealth/android/views/CustomToggleButton$Callback;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/keephealth/android/views/CustomToggleButton$Callback;->handerEvent()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lcom/keephealth/android/views/CustomToggleButton$Callback;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->callback:Lcom/keephealth/android/views/CustomToggleButton$Callback;

    return-void
.end method

.method public setImageResource(III)V
    .registers 7

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_on_Bkg:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    sub-int/2addr p2, p3

    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->switch_off_Bkg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    sub-int/2addr v1, v2

    invoke-direct {p1, p2, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->on_Rect:Landroid/graphics/Rect;

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    iget-object p3, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/CustomToggleButton;->slip_Btn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/CustomToggleButton;->rectPadding:I

    sub-int/2addr v0, v1

    invoke-direct {p1, p2, p2, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->off_Rect:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->postInvalidate()V

    return-void
.end method

.method public setOnSwitchListener(Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->onSwitchListener:Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;

    return-void
.end method

.method public setSwitchState(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    .line 74
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->postInvalidate()V

    return-void
.end method

.method protected updateSwitchState(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/keephealth/android/views/CustomToggleButton;->isSwitchOn:Z

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/views/CustomToggleButton;->postInvalidate()V

    return-void
.end method
