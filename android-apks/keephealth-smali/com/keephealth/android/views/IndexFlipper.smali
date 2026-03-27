.class public Lcom/keephealth/android/views/IndexFlipper;
.super Landroid/widget/ViewFlipper;
.source "IndexFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;
    }
.end annotation


# instance fields
.field private carouselChanged:Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;

.field private duration:I

.field private fling:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private leftInAnim:Landroid/view/animation/Animation;

.field private leftOutAnim:Landroid/view/animation/Animation;

.field private rightInAnim:Landroid/view/animation/Animation;

.field private rightOutAnim:Landroid/view/animation/Animation;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1f4

    .line 27
    iput v0, p0, Lcom/keephealth/android/views/IndexFlipper;->duration:I

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/keephealth/android/views/IndexFlipper;->fling:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/IndexFlipper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1f4

    .line 27
    iput p2, p0, Lcom/keephealth/android/views/IndexFlipper;->duration:I

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/keephealth/android/views/IndexFlipper;->fling:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/IndexFlipper;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/keephealth/android/views/IndexFlipper;Z)Z
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/keephealth/android/views/IndexFlipper;->fling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/views/IndexFlipper;->rightInAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/views/IndexFlipper;->leftOutAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/IndexFlipper;II)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/IndexFlipper;->triggerChanged(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/views/IndexFlipper;->leftInAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/IndexFlipper;)Landroid/view/animation/Animation;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/keephealth/android/views/IndexFlipper;->rightOutAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 13

    .line 45
    new-instance p1, Lcom/keephealth/android/views/IndexFlipper$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/IndexFlipper$1;-><init>(Lcom/keephealth/android/views/IndexFlipper;)V

    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 95
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/keephealth/android/views/IndexFlipper;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->gestureDetector:Landroid/view/GestureDetector;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->views:Ljava/util/List;

    .line 98
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->rightInAnim:Landroid/view/animation/Animation;

    .line 102
    iget v0, p0, Lcom/keephealth/android/views/IndexFlipper;->duration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->leftOutAnim:Landroid/view/animation/Animation;

    .line 109
    iget v0, p0, Lcom/keephealth/android/views/IndexFlipper;->duration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->rightOutAnim:Landroid/view/animation/Animation;

    .line 116
    iget v0, p0, Lcom/keephealth/android/views/IndexFlipper;->duration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 119
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->leftInAnim:Landroid/view/animation/Animation;

    .line 123
    iget v0, p0, Lcom/keephealth/android/views/IndexFlipper;->duration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private triggerChanged(II)V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/views/IndexFlipper;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    return-void

    .line 129
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/views/IndexFlipper;->carouselChanged:Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;

    if-eqz v0, :cond_18

    .line 130
    iget-object v1, p0, Lcom/keephealth/android/views/IndexFlipper;->views:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, p1, p2, v1}, Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;->onChanged(IILandroid/view/View;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/views/IndexFlipper;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCarouselChanged()Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/views/IndexFlipper;->carouselChanged:Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "FF323vf"

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/keephealth/android/views/IndexFlipper;->fling:Z

    .line 165
    const-string v0, "DOWN"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 167
    :cond_11
    iget-boolean v0, p0, Lcom/keephealth/android/views/IndexFlipper;->fling:Z

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 168
    const-string p1, "UP"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 171
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCarouselChanged(Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/keephealth/android/views/IndexFlipper;->carouselChanged:Lcom/keephealth/android/views/IndexFlipper$CarouselChanged;

    return-void
.end method

.method public setViews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/views/IndexFlipper;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    invoke-virtual {p0}, Lcom/keephealth/android/views/IndexFlipper;->removeAllViews()V

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/views/IndexFlipper;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 151
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/IndexFlipper;->addView(Landroid/view/View;)V

    goto :goto_11

    :cond_21
    return-void
.end method
