.class public Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "PreviewerViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$PageChangeListener;
    }
.end annotation


# instance fields
.field private isInterceptable:Z

.field private isTransition:Z

.field private mScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isInterceptable:Z

    .line 16
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isTransition:Z

    .line 17
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->mScrollState:I

    .line 25
    new-instance p1, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$PageChangeListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$PageChangeListener;-><init>(Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;Lcom/keephealth/android/views/gallery/view/PreviewerViewPager$1;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;I)I
    .registers 2

    .line 13
    iput p1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->mScrollState:I

    return p1
.end method


# virtual methods
.method public isInterceptable(Z)V
    .registers 3

    .line 59
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isInterceptable:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isTransition:Z

    .line 60
    :cond_9
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isInterceptable:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 30
    iget v0, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->mScrollState:I

    if-eqz v0, :cond_9

    .line 31
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 35
    :cond_9
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isTransition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 38
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 40
    iput-boolean v1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isTransition:Z

    .line 45
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    .line 48
    iput-boolean v1, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isInterceptable:Z

    :cond_25
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    .line 51
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isInterceptable:Z

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    move p1, v1

    goto :goto_33

    .line 52
    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 55
    :goto_33
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->isInterceptable:Z

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    return v1
.end method
