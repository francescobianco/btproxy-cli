.class public Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;
.super Landroid/view/SurfaceView;
.source "MyEcgSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Ljava/lang/Runnable;


# static fields
.field private static OFFSET_HEART_VALUE:F = 4096.0f

.field private static offsetBS:F = 1.5f


# instance fields
.field public ECGdatadeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private current:F

.field private isDrawing:Z

.field last_data:F

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mPaint01:Landroid/graphics/Paint;

.field private final offset:F

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    .line 37
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->last_data:F

    .line 38
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    const/high16 p1, 0x40000000    # 2.0f

    .line 43
    iput p1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->offset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    .line 37
    iput p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->last_data:F

    .line 38
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    const/high16 p2, 0x40000000    # 2.0f

    .line 43
    iput p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->offset:F

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    .line 37
    iput p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->last_data:F

    .line 38
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    const/high16 p2, 0x40000000    # 2.0f

    .line 43
    iput p2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->offset:F

    .line 61
    iput-object p1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private drawing()V
    .registers 15

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11d

    const/4 v0, 0x0

    .line 136
    :try_start_9
    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    cmpl-float v1, v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v1, :cond_3c

    .line 137
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    .line 138
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 140
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v4, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 142
    :cond_3c
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    float-to-int v6, v5

    iget-object v7, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getHeight()I

    move-result v8

    invoke-direct {v4, v6, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5c} :catch_f9
    .catchall {:try_start_9 .. :try_end_5c} :catchall_f7

    if-nez v1, :cond_6c

    if-eqz v1, :cond_65

    .line 169
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 171
    :cond_65
    iget-boolean v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    if-nez v1, :cond_6b

    .line 172
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    :cond_6b
    return-void

    .line 146
    :cond_6c
    :try_start_6c
    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 147
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 148
    :goto_7b
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-ge v3, v1, :cond_e9

    .line 149
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 150
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->last_data:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_97

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->last_data:F

    .line 154
    :cond_97
    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->last_data:F

    const/high16 v4, 0x45000000    # 2048.0f

    sub-float v5, v2, v4

    sget v6, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->offsetBS:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 155
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v6

    sub-float/2addr v6, v4

    sget v4, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->offsetBS:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 156
    iget-object v8, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    iget v9, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    sget v4, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->OFFSET_HEART_VALUE:F

    div-float v10, v2, v4

    iget v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    add-float v11, v2, v7

    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v5, v2

    sget v2, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->OFFSET_HEART_VALUE:F

    div-float v12, v5, v2

    iget-object v13, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->last_data:F

    .line 158
    iget v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    add-float/2addr v1, v7

    iput v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    .line 159
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e6

    .line 160
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_e5} :catch_f9
    .catchall {:try_start_6c .. :try_end_e5} :catchall_f7

    goto :goto_e9

    :cond_e6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 168
    :cond_e9
    :goto_e9
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_f2

    .line 169
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 171
    :cond_f2
    iget-boolean v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    if-nez v1, :cond_127

    goto :goto_10a

    :catchall_f7
    move-exception v1

    goto :goto_10d

    :catch_f9
    move-exception v1

    .line 165
    :try_start_fa
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_f7

    .line 168
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_106

    .line 169
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 171
    :cond_106
    iget-boolean v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    if-nez v1, :cond_127

    .line 172
    :goto_10a
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    goto :goto_127

    .line 168
    :goto_10d
    iget-object v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_116

    .line 169
    iget-object v3, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 171
    :cond_116
    iget-boolean v2, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    if-nez v2, :cond_11c

    .line 172
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    .line 174
    :cond_11c
    throw v1

    :cond_11d
    const-wide/16 v0, 0x3

    .line 177
    :try_start_11f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_122
    .catch Ljava/lang/InterruptedException; {:try_start_11f .. :try_end_122} :catch_123

    goto :goto_127

    :catch_123
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_127
    :goto_127
    return-void
.end method

.method private init()V
    .registers 4

    .line 101
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 102
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->setKeepScreenOn(Z)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->setZOrderOnTop(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    .line 107
    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->mPaint01:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getWHeight()I
    .registers 2

    .line 190
    invoke-virtual {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->getHeight()I

    move-result v0

    return v0
.end method

.method public run()V
    .registers 5

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    if-eqz v0, :cond_1f

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 119
    invoke-direct {p0}, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->drawing()V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    :goto_11
    const/16 v3, 0x12c

    if-ge v2, v3, :cond_0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 126
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_11

    :cond_1f
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public startThread()V
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_f
    return-void
.end method

.method public stopThread()V
    .registers 2

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->ECGdatadeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->current:F

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/keephealth/android/views/ecg/MyEcgSurfaceView;->isDrawing:Z

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method
