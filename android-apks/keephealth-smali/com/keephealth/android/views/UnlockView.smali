.class public Lcom/keephealth/android/views/UnlockView;
.super Landroid/view/View;
.source "UnlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/UnlockView$UnLockListener;
    }
.end annotation


# instance fields
.field private cancelAnimator:Landroid/animation/ObjectAnimator;

.field private duration:J

.field private lister:Lcom/keephealth/android/views/UnlockView$UnLockListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRingColor:I

.field private mStrokeWidth:F

.field private mXCenter:I

.field private mYCenter:I

.field private progress:I

.field private progressAnimator:Landroid/animation/ObjectAnimator;

.field private timer:Ljava/util/Timer;

.field private unLockBitmap:Landroid/graphics/Bitmap;

.field private unLockDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v0, Lcom/keephealth/android/R$styleable;->UnlockView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/UnlockView;->unLockDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/UnlockView;->mRingColor:I

    const/high16 p2, 0x41200000    # 10.0f

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/views/UnlockView;->unLockDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/UnlockView;)I
    .registers 1

    .line 23
    iget p0, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/UnlockView;I)I
    .registers 2

    .line 23
    iput p1, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    return p1
.end method

.method static synthetic access$012(Lcom/keephealth/android/views/UnlockView;I)I
    .registers 3

    .line 23
    iget v0, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    return v0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/UnlockView;)Lcom/keephealth/android/views/UnlockView$UnLockListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/keephealth/android/views/UnlockView;->lister:Lcom/keephealth/android/views/UnlockView$UnLockListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/UnlockView;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/keephealth/android/views/UnlockView;->closeTimer()V

    return-void
.end method

.method private closeTimer()V
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 221
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/keephealth/android/views/UnlockView;->timer:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method private createTimer()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->timer:Ljava/util/Timer;

    if-nez v0, :cond_b

    .line 215
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/UnlockView;->timer:Ljava/util/Timer;

    :cond_b
    return-void
.end method

.method private measureHeight(I)I
    .registers 4

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 98
    :cond_d
    iget-object p1, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    :goto_13
    return p1
.end method

.method private measureWidth(I)I
    .registers 4

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    goto :goto_13

    .line 85
    :cond_d
    iget-object p1, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_13
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keephealth/android/views/UnlockView;->mXCenter:I

    .line 108
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keephealth/android/views/UnlockView;->mYCenter:I

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_79

    .line 114
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 117
    iget-object v1, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 118
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_41

    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    goto :goto_48

    :cond_41
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    .line 119
    :goto_48
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 121
    iget-object v1, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/UnlockView;->unLockBitmap:Landroid/graphics/Bitmap;

    .line 122
    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mXCenter:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/UnlockView;->mYCenter:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    :cond_79
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 132
    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 133
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 134
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 136
    iget-object v0, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget v0, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    if-ltz v0, :cond_f7

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 139
    iget v0, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 140
    iget v0, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 141
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 142
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/keephealth/android/views/UnlockView;->mStrokeWidth:F

    sub-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 143
    iget v0, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/keephealth/android/views/UnlockView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_f7
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 63
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/UnlockView;->measureWidth(I)I

    move-result p1

    .line 64
    invoke-direct {p0, p2}, Lcom/keephealth/android/views/UnlockView;->measureHeight(I)I

    move-result p2

    if-le p1, p2, :cond_e

    move p1, p2

    .line 67
    :cond_e
    invoke-virtual {p0, p1, p1}, Lcom/keephealth/android/views/UnlockView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x168

    const/4 v1, 0x1

    if-eqz p1, :cond_5e

    if-eq p1, v1, :cond_f

    goto :goto_73

    .line 173
    :cond_f
    invoke-direct {p0}, Lcom/keephealth/android/views/UnlockView;->closeTimer()V

    .line 174
    iget p1, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    if-ne p1, v0, :cond_17

    goto :goto_73

    :cond_17
    const/4 v0, 0x0

    .line 178
    const-string v2, "progress"

    const/16 v3, 0x78

    if-ge p1, v3, :cond_45

    rsub-int/lit8 v4, p1, 0x78

    mul-int/lit8 v4, v4, 0x5

    add-int/lit16 v4, v4, 0x258

    int-to-long v4, v4

    .line 179
    iput-wide v4, p0, Lcom/keephealth/android/views/UnlockView;->duration:J

    .line 180
    filled-new-array {p1, v3, v0}, [I

    move-result-object p1

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide v2, p0, Lcom/keephealth/android/views/UnlockView;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/UnlockView;->progressAnimator:Landroid/animation/ObjectAnimator;

    .line 181
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/views/UnlockView;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_73

    :cond_45
    mul-int/lit8 v3, p1, 0x5

    int-to-long v3, v3

    .line 184
    iput-wide v3, p0, Lcom/keephealth/android/views/UnlockView;->duration:J

    .line 185
    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide v2, p0, Lcom/keephealth/android/views/UnlockView;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/UnlockView;->cancelAnimator:Landroid/animation/ObjectAnimator;

    .line 186
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_73

    .line 156
    :cond_5e
    invoke-direct {p0}, Lcom/keephealth/android/views/UnlockView;->createTimer()V

    .line 157
    iget p1, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    if-gt p1, v0, :cond_73

    .line 158
    iget-object v2, p0, Lcom/keephealth/android/views/UnlockView;->timer:Ljava/util/Timer;

    new-instance v3, Lcom/keephealth/android/views/UnlockView$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/views/UnlockView$1;-><init>(Lcom/keephealth/android/views/UnlockView;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_73
    :goto_73
    return v1
.end method

.method public setProgress(I)V
    .registers 2

    .line 198
    iput p1, p0, Lcom/keephealth/android/views/UnlockView;->progress:I

    .line 199
    invoke-virtual {p0}, Lcom/keephealth/android/views/UnlockView;->invalidate()V

    return-void
.end method

.method public setUnLockListener(Lcom/keephealth/android/views/UnlockView$UnLockListener;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/keephealth/android/views/UnlockView;->lister:Lcom/keephealth/android/views/UnlockView$UnLockListener;

    return-void
.end method
