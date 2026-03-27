.class public Lcom/keephealth/android/views/RvSlideLayout;
.super Landroid/widget/HorizontalScrollView;
.source "RvSlideLayout.java"


# static fields
.field private static final radio:F = 0.3f


# instance fields
.field downTime:J

.field private isOpen:Z

.field private final mMenuWidth:I

.field private final mScreenWidth:I

.field private mSpacing:I

.field private once:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->once:Z

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->mSpacing:I

    const-wide/16 v1, 0x0

    .line 137
    iput-wide v1, p0, Lcom/keephealth/android/views/RvSlideLayout;->downTime:J

    .line 30
    sget-object v1, Lcom/keephealth/android/R$styleable;->RvSlideLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/keephealth/android/views/RvSlideLayout;->mSpacing:I

    .line 32
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/RvSlideLayout;->mScreenWidth:I

    const/high16 p2, 0x42a00000    # 80.0f

    .line 33
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/RvSlideLayout;->mMenuWidth:I

    const/4 p1, 0x2

    .line 34
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/RvSlideLayout;->setOverScrollMode(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RvSlideLayout;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method private getAdapter()Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;
    .registers 3

    move-object v0, p0

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 61
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;

    return-object v0
.end method

.method private onOpenMenu()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/keephealth/android/views/RvSlideLayout;->getAdapter()Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->holdOpenMenu(Lcom/keephealth/android/views/RvSlideLayout;)V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->isOpen:Z

    return-void
.end method


# virtual methods
.method public closeMenu()V
    .registers 2

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, v0}, Lcom/keephealth/android/views/RvSlideLayout;->smoothScrollTo(II)V

    .line 44
    iput-boolean v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->isOpen:Z

    return-void
.end method

.method public closeOpenMenu()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->isOpen:Z

    .line 81
    invoke-direct {p0}, Lcom/keephealth/android/views/RvSlideLayout;->getAdapter()Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->closeOpenMenu()V

    return-void
.end method

.method public getScrollingMenu()Lcom/keephealth/android/views/RvSlideLayout;
    .registers 2

    .line 88
    invoke-direct {p0}, Lcom/keephealth/android/views/RvSlideLayout;->getAdapter()Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->getScrollingMenu()Lcom/keephealth/android/views/RvSlideLayout;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->isOpen:Z

    return v0
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 100
    iget-boolean v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->once:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/RvSlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/keephealth/android/views/RvSlideLayout;->mScreenWidth:I

    iget v4, p0, Lcom/keephealth/android/views/RvSlideLayout;->mSpacing:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/RvSlideLayout;->mMenuWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    iput-boolean v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->once:Z

    .line 106
    :cond_29
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_40

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_4c

    :cond_a
    const/4 p1, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/RvSlideLayout;->setScrollingMenu(Lcom/keephealth/android/views/RvSlideLayout;)V

    .line 119
    invoke-virtual {p0}, Lcom/keephealth/android/views/RvSlideLayout;->getScrollX()I

    move-result p1

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/keephealth/android/views/RvSlideLayout;->downTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gtz v0, :cond_28

    if-nez p1, :cond_28

    .line 121
    invoke-virtual {p0}, Lcom/keephealth/android/views/RvSlideLayout;->closeOpenMenu()V

    .line 122
    invoke-virtual {p0}, Lcom/keephealth/android/views/RvSlideLayout;->performClick()Z

    return v1

    :cond_28
    if-eqz p1, :cond_3f

    .line 126
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->mMenuWidth:I

    div-int/lit8 v2, v0, 0x2

    if-le p1, v2, :cond_3c

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/RvSlideLayout;->smoothScrollTo(II)V

    .line 128
    invoke-direct {p0}, Lcom/keephealth/android/views/RvSlideLayout;->onOpenMenu()V

    goto :goto_3f

    .line 130
    :cond_3c
    invoke-virtual {p0}, Lcom/keephealth/android/views/RvSlideLayout;->closeMenu()V

    :cond_3f
    :goto_3f
    return v1

    .line 113
    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/views/RvSlideLayout;->downTime:J

    .line 114
    invoke-virtual {p0}, Lcom/keephealth/android/views/RvSlideLayout;->closeOpenMenu()V

    .line 115
    invoke-virtual {p0, p0}, Lcom/keephealth/android/views/RvSlideLayout;->setScrollingMenu(Lcom/keephealth/android/views/RvSlideLayout;)V

    .line 135
    :goto_4c
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScrollingMenu(Lcom/keephealth/android/views/RvSlideLayout;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Lcom/keephealth/android/views/RvSlideLayout;->getAdapter()Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->setScrollingMenu(Lcom/keephealth/android/views/RvSlideLayout;)V

    return-void
.end method
