.class public Lcom/keephealth/android/views/SwipeDragLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeDragLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;,
        Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    }
.end annotation


# instance fields
.field private clickToClose:Z

.field private clickToOpen:Z

.field private contentView:Landroid/view/View;

.field private isOpen:Z

.field private mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

.field private mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

.field private menuView:Landroid/view/View;

.field private needOffset:F

.field private offset:F

.field private originPos:Landroid/graphics/Point;

.field private touchFlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/SwipeDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/SwipeDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    const p3, 0x3e4ccccd    # 0.2f

    .line 33
    iput p3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->needOffset:F

    .line 50
    sget-object v0, Lcom/keephealth/android/R$styleable;->SwipeDragLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    .line 51
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->needOffset:F

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->clickToOpen:Z

    .line 53
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->clickToClose:Z

    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->touchFlop:I

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->needOffset:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "needOffset"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->init()V

    .line 57
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/SwipeDragLayout;)F
    .registers 1

    .line 24
    iget p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->offset:F

    return p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/views/SwipeDragLayout;F)F
    .registers 2

    .line 24
    iput p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->offset:F

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/SwipeDragLayout;)F
    .registers 1

    .line 24
    iget p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->needOffset:F

    return p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/SwipeDragLayout;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->clickToClose:Z

    return p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/SwipeDragLayout;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z

    return p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/SwipeDragLayout;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->clickToOpen:Z

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/views/SwipeDragLayout;)Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/views/SwipeDragLayout;)Landroid/view/View;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/views/SwipeDragLayout;F)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SwipeDragLayout;->dispatchSwipeEvent(F)V

    return-void
.end method

.method private dispatchSwipeEvent(F)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3d

    .line 167
    iget v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->touchFlop:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3d

    .line 168
    iget-boolean v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z

    if-eqz v1, :cond_20

    rsub-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_20

    .line 169
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    if-eqz p1, :cond_53

    .line 170
    invoke-interface {p1, p0}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onStartClose(Lcom/keephealth/android/views/SwipeDragLayout;)V

    goto :goto_53

    .line 172
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen()Z

    move-result v0

    if-nez v0, :cond_35

    iget v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->touchFlop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_35

    .line 174
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    if-eqz p1, :cond_53

    .line 175
    invoke-interface {p1, p0}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onStartOpen(Lcom/keephealth/android/views/SwipeDragLayout;)V

    goto :goto_53

    .line 179
    :cond_35
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    if-eqz v0, :cond_53

    .line 180
    invoke-interface {v0, p0, p1}, Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;->onUpdate(Lcom/keephealth/android/views/SwipeDragLayout;F)V

    goto :goto_53

    .line 183
    :cond_3d
    iget v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->touchFlop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_53

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    if-eqz p1, :cond_53

    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->isOpenStatus()Z

    move-result p1

    if-nez p1, :cond_53

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    invoke-interface {p1, p0}, Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;->onDownOrMove(Lcom/keephealth/android/views/SwipeDragLayout;)V

    :cond_53
    :goto_53
    return-void
.end method

.method private init()V
    .registers 3

    .line 63
    new-instance v0, Lcom/keephealth/android/views/SwipeDragLayout$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/SwipeDragLayout$1;-><init>(Lcom/keephealth/android/views/SwipeDragLayout;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mListener:Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;

    return-void
.end method

.method public close()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 281
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public isOpen()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z

    return v0
.end method

.method public isOpenStatus()Z
    .registers 6

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 239
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 241
    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingLeft()I

    move-result v3

    if-ne v2, v3, :cond_1b

    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingTop()I

    move-result v3

    if-ne v0, v3, :cond_1b

    return v1

    .line 242
    :cond_1b
    iget-object v3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 243
    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v2, v4, :cond_3f

    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v3

    if-eq v2, v4, :cond_3f

    .line 244
    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_3f

    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_3e

    goto :goto_3f

    :cond_3e
    return v1

    :cond_3f
    :goto_3f
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 288
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x1

    .line 289
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SwipeDragLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/SwipeDragLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    .line 291
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    .line 292
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 253
    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 271
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 273
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 274
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public open()V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z

    return-void
.end method

.method public setClickToClose(Z)V
    .registers 2

    .line 192
    iput-boolean p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->clickToClose:Z

    return-void
.end method

.method public setClickToOpen(Z)V
    .registers 2

    .line 196
    iput-boolean p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->clickToOpen:Z

    return-void
.end method

.method public setISwipeLayout(Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mISwipeLayout:Lcom/keephealth/android/views/SwipeDragLayout$ISwipeLayout;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public smoothClose(Z)V
    .registers 6

    if-eqz p1, :cond_15

    .line 219
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 220
    invoke-virtual {p0}, Lcom/keephealth/android/views/SwipeDragLayout;->postInvalidate()V

    goto :goto_2e

    .line 222
    :cond_15
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_2e
    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->isOpen:Z

    return-void
.end method

.method public smoothOpen(Z)V
    .registers 6

    if-eqz p1, :cond_19

    .line 211
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_39

    .line 213
    :cond_19
    iget-object p1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->contentView:Landroid/view/View;

    iget-object v0, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/keephealth/android/views/SwipeDragLayout;->originPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/keephealth/android/views/SwipeDragLayout;->menuView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_39
    return-void
.end method
