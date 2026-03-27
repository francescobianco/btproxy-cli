.class public Lcom/keephealth/android/views/InnerGuideView;
.super Landroid/view/View;
.source "InnerGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;,
        Lcom/keephealth/android/views/InnerGuideView$BorderType;,
        Lcom/keephealth/android/views/InnerGuideView$Builder;
    }
.end annotation


# instance fields
.field private borderType:I

.field private color:I

.field private content:Landroid/view/ViewGroup;

.field private contentXY:[I

.field private context:Landroid/content/Context;

.field private focusView:Landroid/view/View;

.field private isDash:Z

.field private iteratorText:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iteratorView:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBubbleOrientation:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

.field private final mBubblePaint:Landroid/graphics/Paint;

.field private final mBubblePath:Landroid/graphics/Path;

.field private mBubbleRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private maxWight:I

.field private padding:I

.field private roundRadius:I

.field private tipText:Ljava/lang/String;

.field private tipTextColor:I

.field private viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xy:[I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/util/Map;IIIZLcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;ILandroid/graphics/Bitmap;)V
    .registers 13

    .line 81
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xb4

    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/InnerGuideView;->color:I

    const/4 v0, 0x2

    .line 54
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    .line 55
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->contentXY:[I

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->viewMap:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePath:Landroid/graphics/Path;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePaint:Landroid/graphics/Paint;

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    .line 82
    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    .line 83
    iput p2, p0, Lcom/keephealth/android/views/InnerGuideView;->color:I

    .line 84
    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->context:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/keephealth/android/views/InnerGuideView;->viewMap:Ljava/util/Map;

    .line 86
    iput p4, p0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    .line 87
    iput p5, p0, Lcom/keephealth/android/views/InnerGuideView;->tipTextColor:I

    .line 88
    iput p6, p0, Lcom/keephealth/android/views/InnerGuideView;->roundRadius:I

    .line 89
    iput-boolean p7, p0, Lcom/keephealth/android/views/InnerGuideView;->isDash:Z

    .line 90
    iput-object p8, p0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleOrientation:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    .line 91
    iput p9, p0, Lcom/keephealth/android/views/InnerGuideView;->padding:I

    .line 92
    iput-object p10, p0, Lcom/keephealth/android/views/InnerGuideView;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    check-cast p1, Landroid/app/Activity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->content:Landroid/view/ViewGroup;

    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/views/InnerGuideView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/InnerGuideView$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/InnerGuideView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 99
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/InnerGuideView;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p3, :cond_a4

    .line 100
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_a4

    .line 102
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->iteratorView:Ljava/util/Iterator;

    .line 104
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->iteratorText:Ljava/util/Iterator;

    .line 106
    iget-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->iteratorView:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->iteratorText:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lcom/keephealth/android/views/InnerGuideView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/keephealth/android/views/InnerGuideView$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/InnerGuideView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 117
    :cond_a4
    new-instance p1, Lcom/keephealth/android/views/InnerGuideView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/InnerGuideView$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/views/InnerGuideView;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/InnerGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    .line 129
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 133
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/util/Map;IIIZLcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;ILandroid/graphics/Bitmap;Lcom/keephealth/android/views/InnerGuideView$1;)V
    .registers 12

    .line 49
    invoke-direct/range {p0 .. p10}, Lcom/keephealth/android/views/InnerGuideView;-><init>(Landroid/content/Context;ILjava/util/Map;IIIZLcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private setLight(Landroid/app/Activity;I)V
    .registers 5

    .line 432
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 433
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 435
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4e

    .line 440
    :cond_30
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float p2, p2

    .line 441
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v1, 0x3b808081

    mul-float/2addr p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 442
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_4e
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-keephealth-android-views-InnerGuideView()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->content:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/keephealth/android/views/InnerGuideView;->contentXY:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 97
    invoke-virtual {p0}, Lcom/keephealth/android/views/InnerGuideView;->invalidate()V

    return-void
.end method

.method synthetic lambda$new$1$com-keephealth-android-views-InnerGuideView()V
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "igv"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    iget-object v1, p0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    invoke-virtual {p0}, Lcom/keephealth/android/views/InnerGuideView;->invalidate()V

    return-void
.end method

.method synthetic lambda$new$2$com-keephealth-android-views-InnerGuideView(Landroid/view/View;)V
    .registers 3

    .line 118
    iget-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->iteratorView:Ljava/util/Iterator;

    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 119
    iget-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->iteratorView:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    .line 120
    iget-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->iteratorText:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    iget-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    invoke-virtual {p0}, Lcom/keephealth/android/views/InnerGuideView;->invalidate()V

    goto :goto_2e

    :cond_29
    const/16 p1, 0x8

    .line 124
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/InnerGuideView;->setVisibility(I)V

    :goto_2e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 145
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget v2, v0, Lcom/keephealth/android/views/InnerGuideView;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 147
    iget-object v2, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->contentXY:[I

    aget v6, v5, v3

    sub-int/2addr v4, v6

    aput v4, v2, v3

    const/4 v4, 0x1

    .line 148
    aget v6, v2, v4

    aget v5, v5, v4

    sub-int/2addr v6, v5

    aput v6, v2, v4

    .line 149
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 150
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 151
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v7, v6, v3

    iget v8, v0, Lcom/keephealth/android/views/InnerGuideView;->padding:I

    sub-int v9, v7, v8

    int-to-float v9, v9

    aget v6, v6, v4

    sub-int/2addr v6, v8

    int-to-float v6, v6

    iget-object v8, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Lcom/keephealth/android/views/InnerGuideView;->padding:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v8, v8, v4

    iget-object v10, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v8, v10

    iget v10, v0, Lcom/keephealth/android/views/InnerGuideView;->padding:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    invoke-direct {v5, v9, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 152
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v7, v7, v3

    int-to-float v7, v7

    iget-object v8, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    int-to-float v8, v8

    const v10, 0x3ed3f7cf    # 0.414f

    mul-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget-object v8, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v8, v8, v4

    int-to-float v8, v8

    iget-object v11, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/2addr v11, v9

    int-to-float v11, v11

    mul-float/2addr v11, v10

    sub-float/2addr v8, v11

    iget-object v11, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v11, v11, v3

    int-to-float v11, v11

    iget-object v12, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f9a7efa    # 1.207f

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v12, v12, v4

    int-to-float v12, v12

    iget-object v14, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    add-float/2addr v12, v14

    invoke-direct {v6, v7, v8, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 153
    iget v7, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-eqz v7, :cond_b6

    if-eq v7, v4, :cond_b2

    if-eq v7, v9, :cond_aa

    goto :goto_b9

    .line 163
    :cond_aa
    iget v6, v0, Lcom/keephealth/android/views/InnerGuideView;->roundRadius:I

    int-to-float v7, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v7, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_b9

    .line 160
    :cond_b2
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_b9

    .line 156
    :cond_b6
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 167
    :goto_b9
    iget-boolean v2, v0, Lcom/keephealth/android/views/InnerGuideView;->isDash:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_180

    .line 170
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v6, -0x1

    .line 171
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 178
    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v11, v8, v3

    add-int/lit8 v12, v11, -0x12

    int-to-float v12, v12

    aget v8, v8, v4

    add-int/lit8 v8, v8, -0x12

    int-to-float v8, v8

    iget-object v14, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v11, v14

    add-int/lit8 v11, v11, 0x12

    int-to-float v11, v11

    iget-object v14, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v14, v14, v4

    iget-object v15, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x12

    int-to-float v14, v14

    invoke-direct {v7, v12, v8, v11, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 179
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 180
    new-instance v7, Landroid/graphics/DashPathEffect;

    new-array v8, v9, [F

    fill-array-data v8, :array_532

    const/4 v11, 0x0

    invoke-direct {v7, v8, v11}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 181
    new-instance v8, Landroid/graphics/CornerPathEffect;

    iget v11, v0, Lcom/keephealth/android/views/InnerGuideView;->roundRadius:I

    int-to-float v11, v11

    invoke-direct {v8, v11}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 182
    new-instance v11, Landroid/graphics/ComposePathEffect;

    invoke-direct {v11, v7, v8}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    .line 183
    iget v8, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-ne v8, v9, :cond_122

    .line 185
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 187
    :cond_122
    iget v8, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-nez v8, :cond_129

    .line 189
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 191
    :cond_129
    iget v8, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-ne v8, v4, :cond_17d

    .line 193
    new-instance v8, Landroid/graphics/RectF;

    iget-object v11, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v11, v11, v3

    int-to-float v11, v11

    iget-object v12, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/2addr v12, v9

    int-to-float v12, v12

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    const/high16 v12, 0x41000000    # 8.0f

    sub-float/2addr v11, v12

    iget-object v14, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v14, v14, v4

    int-to-float v14, v14

    iget-object v15, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/2addr v15, v9

    int-to-float v15, v15

    mul-float/2addr v15, v10

    sub-float/2addr v14, v15

    sub-float/2addr v14, v12

    iget-object v10, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v10, v10, v3

    int-to-float v10, v10

    iget-object v15, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v13

    add-float/2addr v10, v15

    add-float/2addr v10, v12

    iget-object v15, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v15, v15, v4

    int-to-float v15, v15

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v13

    add-float/2addr v15, v5

    add-float/2addr v15, v12

    invoke-direct {v8, v11, v14, v10, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 194
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 195
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v8, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 196
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 198
    :cond_17d
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 205
    :cond_180
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/InnerGuideView;->getWidth()I

    move-result v2

    div-int/2addr v2, v9

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/InnerGuideView;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    .line 207
    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v6, v6, v4

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 208
    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v8, v7, v4

    .line 209
    aget v7, v7, v3

    .line 210
    iget-object v10, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v7

    if-ge v6, v5, :cond_1b3

    sub-int v5, v10, v7

    .line 214
    div-int/2addr v5, v9

    .line 215
    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-ne v5, v4, :cond_1e9

    .line 216
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    goto :goto_1e9

    :cond_1b3
    if-le v8, v5, :cond_1c4

    sub-int v5, v10, v7

    .line 223
    div-int/2addr v5, v9

    .line 224
    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-ne v5, v4, :cond_1e9

    .line 225
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    goto :goto_1e9

    :cond_1c4
    sub-int v8, v5, v8

    sub-int/2addr v6, v5

    if-gt v8, v6, :cond_1d8

    sub-int v5, v10, v7

    .line 232
    div-int/2addr v5, v9

    .line 233
    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-ne v5, v4, :cond_1e9

    .line 234
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    goto :goto_1e9

    .line 240
    :cond_1d8
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/InnerGuideView;->getHeight()I

    sub-int v5, v10, v7

    .line 241
    div-int/2addr v5, v9

    .line 242
    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->borderType:I

    if-ne v5, v4, :cond_1e9

    .line 243
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v9

    :cond_1e9
    :goto_1e9
    if-le v7, v2, :cond_1ec

    goto :goto_1f8

    :cond_1ec
    if-ge v10, v2, :cond_1ef

    goto :goto_1f8

    :cond_1ef
    sub-int v5, v2, v7

    sub-int/2addr v10, v2

    if-gt v5, v10, :cond_1f5

    goto :goto_1f8

    .line 258
    :cond_1f5
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/InnerGuideView;->getWidth()I

    .line 283
    :goto_1f8
    iget-object v2, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 284
    iget-object v2, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v5, v5, v3

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v9

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v6, v6, v4

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 285
    iget-object v2, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v5, v5, v3

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v9

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v6, v6, v4

    iget-object v10, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v11, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    add-int/2addr v6, v10

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    iget-object v2, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v5, v5, v3

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v9

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v6, v6, v4

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    iget-object v2, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 288
    iget-object v2, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 291
    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->tipTextColor:I

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 292
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 293
    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 294
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v6, v6, v4

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->focusView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 295
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleOrientation:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    sget-object v6, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->LEFT:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x42200000    # 40.0f

    if-ne v5, v6, :cond_3dc

    .line 296
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v6, v6, v3

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 297
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v5

    .line 298
    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v3, v6, v3

    int-to-float v3, v3

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v6

    add-float/2addr v3, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 299
    iget v6, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    iget-object v12, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v10, v12}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v12

    sub-int/2addr v6, v12

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_38f

    .line 300
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    iget-object v12, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v12

    sub-int/2addr v6, v12

    int-to-float v6, v6

    iput v6, v3, Landroid/graphics/RectF;->right:F

    .line 301
    iget v3, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 302
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v7

    int-to-float v10, v3

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v6, v3

    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 303
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 304
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 305
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_513

    .line 309
    :cond_38f
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 310
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 311
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 312
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_513

    .line 314
    :cond_3dc
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleOrientation:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    sget-object v5, Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;->CENTER:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    if-ne v3, v5, :cond_513

    .line 315
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    int-to-float v6, v5

    cmpg-float v3, v3, v6

    if-gez v3, :cond_472

    .line 316
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    div-int/2addr v5, v9

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 317
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    div-int/2addr v5, v9

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 318
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 319
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 320
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_513

    .line 322
    :cond_472
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    .line 323
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 324
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    int-to-float v6, v6

    iget v12, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v12

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 325
    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 326
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v7

    int-to-float v10, v3

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v6, v3

    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 327
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 328
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->tipText:Ljava/lang/String;

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sget-object v20, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 329
    iget-object v5, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mBubbleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 330
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 334
    :cond_513
    :goto_513
    iget-object v3, v0, Lcom/keephealth/android/views/InnerGuideView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_531

    .line 335
    iget v5, v0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    div-int/2addr v5, v9

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->xy:[I

    aget v4, v6, v4

    iget-object v6, v0, Lcom/keephealth/android/views/InnerGuideView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_531
    return-void

    :array_532
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 140
    iput p1, p0, Lcom/keephealth/android/views/InnerGuideView;->maxWight:I

    return-void
.end method

.method public show()V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->content:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/keephealth/android/views/InnerGuideView;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 352
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/keephealth/android/views/InnerGuideView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 355
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v0, p0, Lcom/keephealth/android/views/InnerGuideView;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
