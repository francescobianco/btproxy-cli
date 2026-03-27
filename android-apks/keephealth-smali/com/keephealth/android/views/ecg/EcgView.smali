.class public Lcom/keephealth/android/views/ecg/EcgView;
.super Landroid/view/SurfaceView;
.source "EcgView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static ecg0Datas:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static isRunning:Z


# instance fields
.field private bgColor:Ljava/lang/String;

.field drawRunnable:Ljava/lang/Runnable;

.field private ecgMax:F

.field private ecgPerCount:I

.field private ecgXOffset:D

.field private ecgYRatio:F

.field private lockWidth:F

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mThred:Ljava/lang/Thread;

.field private mWidth:I

.field private rect:Landroid/graphics/Rect;

.field private sleepTime:I

.field private startX:I

.field private startY0:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private wave_speed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/keephealth/android/views/ecg/EcgView;->ecg0Datas:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x45800000    # 4096.0f

    .line 34
    iput p2, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgMax:F

    .line 35
    const-string p2, "#3FB57D"

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/EcgView;->bgColor:Ljava/lang/String;

    const/16 p2, 0x19

    .line 36
    iput p2, p0, Lcom/keephealth/android/views/ecg/EcgView;->wave_speed:I

    const/16 p2, 0x50

    .line 37
    iput p2, p0, Lcom/keephealth/android/views/ecg/EcgView;->sleepTime:I

    const/16 p2, 0x8

    .line 39
    iput p2, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgPerCount:I

    .line 150
    new-instance p2, Lcom/keephealth/android/views/ecg/EcgView$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/ecg/EcgView$1;-><init>(Lcom/keephealth/android/views/ecg/EcgView;)V

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/EcgView;->drawRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 57
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/EcgView;->rect:Landroid/graphics/Rect;

    .line 59
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/EcgView;->converXOffset()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/ecg/EcgView;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/EcgView;->startDrawWave()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/ecg/EcgView;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/keephealth/android/views/ecg/EcgView;->sleepTime:I

    return p0
.end method

.method private converXOffset()V
    .registers 8

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 86
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    const-wide v5, 0x400451eb851eb852L    # 2.54

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double/2addr v3, v5

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, v3

    .line 96
    iget v2, p0, Lcom/keephealth/android/views/ecg/EcgView;->wave_speed:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    .line 98
    iget v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->sleepTime:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->lockWidth:F

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EcgView:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->lockWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private drawWave0()V
    .registers 11

    .line 181
    :try_start_0
    iget v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->startX:I

    int-to-float v0, v0

    .line 182
    sget-object v1, Lcom/keephealth/android/views/ecg/EcgView;->ecg0Datas:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgPerCount:I

    if-le v1, v2, :cond_84

    const/4 v1, 0x0

    move v3, v0

    move v0, v1

    .line 183
    :goto_10
    iget v2, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgPerCount:I

    if-ge v0, v2, :cond_3f

    .line 184
    sget-object v2, Lcom/keephealth/android/views/ecg/EcgView;->ecg0Datas:Ljava/util/Queue;

    if-eqz v2, :cond_3c

    .line 185
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3c

    float-to-double v4, v3

    .line 187
    iget-wide v6, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgXOffset:D

    add-double/2addr v4, v6

    double-to-float v8, v4

    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/keephealth/android/views/ecg/EcgView;->ecgConver(I)I

    move-result v9

    .line 189
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/keephealth/android/views/ecg/EcgView;->startY0:I

    int-to-float v4, v4

    int-to-float v6, v9

    iget-object v7, p0, Lcom/keephealth/android/views/ecg/EcgView;->mPaint:Landroid/graphics/Paint;

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 191
    iput v9, p0, Lcom/keephealth/android/views/ecg/EcgView;->startY0:I

    move v3, v8

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 195
    :cond_3f
    iget v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->startX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/keephealth/android/views/ecg/EcgView;->lockWidth:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->startX:I

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 197
    iget v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->startX:I

    iget v2, p0, Lcom/keephealth/android/views/ecg/EcgView;->mWidth:I

    if-lt v0, v2, :cond_90

    .line 198
    iput v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->startX:I

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    .line 200
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 201
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_90

    .line 205
    :cond_84
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_8b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    :cond_90
    :goto_90
    return-void
.end method

.method private ecgConver(I)I
    .registers 3

    add-int/lit16 v0, p1, -0x800

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 233
    iget v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgYRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private init()V
    .registers 4

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ecg/EcgView;->setKeepScreenOn(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ecg/EcgView;->setZOrderOnTop(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mPaint:Landroid/graphics/Paint;

    .line 67
    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 73
    iget v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->lockWidth:F

    iget v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgPerCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgXOffset:D

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EcgView:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgXOffset:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->mHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->startY0:I

    int-to-float v0, v0

    .line 76
    iget v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgMax:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->ecgYRatio:F

    return-void
.end method

.method private startDrawWave()V
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->startX:I

    int-to-float v2, v1

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgView;->lockWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/keephealth/android/views/ecg/EcgView;->mHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->rect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1c

    return-void

    .line 172
    :cond_1c
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v4, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 174
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/EcgView;->drawWave0()V

    return-void
.end method


# virtual methods
.method public addEcgData(I)V
    .registers 3

    .line 241
    sget-object v0, Lcom/keephealth/android/views/ecg/EcgView;->ecg0Datas:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEcgData0(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/keephealth/android/views/ecg/EcgView;->ecg0Datas:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 118
    iput p1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mWidth:I

    .line 119
    iput p2, p0, Lcom/keephealth/android/views/ecg/EcgView;->mHeight:I

    const/4 p1, 0x1

    .line 120
    sput-boolean p1, Lcom/keephealth/android/views/ecg/EcgView;->isRunning:Z

    .line 121
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/EcgView;->init()V

    return-void
.end method

.method public startThread()V
    .registers 3

    .line 130
    sget-boolean v0, Lcom/keephealth/android/views/ecg/EcgView;->isRunning:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 131
    sput-boolean v0, Lcom/keephealth/android/views/ecg/EcgView;->isRunning:Z

    .line 132
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->drawRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->mThred:Ljava/lang/Thread;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    return-void
.end method

.method public stopThread()V
    .registers 6

    const/4 v0, 0x0

    .line 139
    sput-boolean v0, Lcom/keephealth/android/views/ecg/EcgView;->isRunning:Z

    .line 140
    iput v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->startX:I

    .line 141
    sget-object v1, Lcom/keephealth/android/views/ecg/EcgView;->ecg0Datas:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 142
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->getHeight()I

    move-result v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_38

    .line 144
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/EcgView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/keephealth/android/views/ecg/EcgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_38
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 104
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 106
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/EcgView;->stopThread()V

    return-void
.end method
