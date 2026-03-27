.class public Lcom/keephealth/android/views/camera/OverCameraView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "OverCameraView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isFoucuing:Z

.field private touchFocusPaint:Landroid/graphics/Paint;

.field private touchFocusRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/views/camera/OverCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/camera/OverCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/camera/OverCameraView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawTouchFocusRect(Landroid/graphics/Canvas;)V
    .registers 9

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_f3

    .line 165
    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_f3
    return-void
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .registers 2

    .line 144
    const-string v0, "window"

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 146
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .registers 2

    .line 155
    const-string v0, "window"

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 157
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->context:Landroid/content/Context;

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    const v0, -0xff0100

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object p1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public disDrawTouchFocusRect()V
    .registers 2

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    .line 129
    invoke-virtual {p0}, Lcom/keephealth/android/views/camera/OverCameraView;->postInvalidate()V

    return-void
.end method

.method public doTouchFocus(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusCallback;Landroid/graphics/Rect;)V
    .registers 7

    if-eqz p1, :cond_3c

    .line 100
    iget-boolean v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->isFoucuing:Z

    if-eqz v0, :cond_7

    goto :goto_3c

    .line 104
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v1, Landroid/hardware/Camera$Area;

    const/16 v2, 0x3e8

    invoke-direct {v1, p3, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p3

    .line 109
    invoke-virtual {p3, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 110
    invoke-virtual {p3, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 111
    const-string v0, "auto"

    invoke-virtual {p3, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 113
    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 114
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->isFoucuing:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_32

    goto :goto_3c

    :catch_32
    move-exception p1

    .line 117
    const-string p2, "\u8bbe\u7f6e\u76f8\u673a\u53c2\u6570\u5f02\u5e38"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public isFoucuing()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->isFoucuing:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 135
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/camera/OverCameraView;->drawTouchFocusRect(Landroid/graphics/Canvas;)V

    .line 136
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFoucuing(Z)V
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->isFoucuing:Z

    return-void
.end method

.method public setTouchFoucusRect(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusCallback;FF)V
    .registers 9

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float v2, p3, v1

    float-to-int v2, v2

    sub-float v3, p4, v1

    float-to-int v3, v3

    add-float/2addr p3, v1

    float-to-int p3, p3

    add-float/2addr p4, v1

    float-to-int p4, p4

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    .line 74
    iget p3, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit16 p3, p3, 0x7d0

    iget-object p4, p0, Lcom/keephealth/android/views/camera/OverCameraView;->context:Landroid/content/Context;

    invoke-static {p4}, Lcom/keephealth/android/views/camera/OverCameraView;->getWindowWidth(Landroid/content/Context;)I

    move-result p4

    div-int/2addr p3, p4

    const/16 p4, 0x3e8

    sub-int/2addr p3, p4

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v0, v0, 0x7d0

    iget-object v1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/keephealth/android/views/camera/OverCameraView;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    div-int/2addr v0, v1

    sub-int/2addr v0, p4

    .line 76
    iget-object v1, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit16 v1, v1, 0x7d0

    iget-object v2, p0, Lcom/keephealth/android/views/camera/OverCameraView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/keephealth/android/views/camera/OverCameraView;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v1, p4

    .line 77
    iget-object v2, p0, Lcom/keephealth/android/views/camera/OverCameraView;->touchFocusRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    mul-int/lit16 v2, v2, 0x7d0

    iget-object v3, p0, Lcom/keephealth/android/views/camera/OverCameraView;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/keephealth/android/views/camera/OverCameraView;->getWindowHeight(Landroid/content/Context;)I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v2, p4

    const/16 v3, -0x3e8

    if-ge p3, v3, :cond_50

    move p3, v3

    :cond_50
    if-ge v0, v3, :cond_53

    move v0, v3

    :cond_53
    if-le v1, p4, :cond_56

    move v1, p4

    :cond_56
    if-le v2, p4, :cond_59

    goto :goto_5a

    :cond_59
    move p4, v2

    .line 83
    :goto_5a
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3, v0, v1, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    invoke-virtual {p0, p1, p2, v2}, Lcom/keephealth/android/views/camera/OverCameraView;->doTouchFocus(Landroid/hardware/Camera;Landroid/hardware/Camera$AutoFocusCallback;Landroid/graphics/Rect;)V

    .line 88
    invoke-virtual {p0}, Lcom/keephealth/android/views/camera/OverCameraView;->postInvalidate()V

    return-void
.end method
