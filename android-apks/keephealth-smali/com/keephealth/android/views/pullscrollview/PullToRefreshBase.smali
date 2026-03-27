.class public abstract Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/keephealth/android/views/pullscrollview/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnLastItemVisibleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/keephealth/android/views/pullscrollview/IPullToRefresh<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z = false


# instance fields
.field private mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase<",
            "TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

.field private mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 81
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 82
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 89
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 90
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 91
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 81
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 82
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 89
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 90
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 91
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 5

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 81
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 82
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 89
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 90
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 91
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    .line 122
    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const/4 p2, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;)V
    .registers 6

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 81
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 82
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 89
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 90
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 91
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 95
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    .line 128
    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 129
    iput-object p3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    const/4 p2, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 7

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1009
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    const/4 p1, -0x1

    .line 1010
    invoke-virtual {v0, p2, p1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1013
    iget-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private callRefreshListener()V
    .registers 3

    .line 1018
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_8

    .line 1019
    invoke-interface {v0, p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V

    goto :goto_23

    .line 1020
    :cond_8
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener2:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_23

    .line 1021
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_18

    .line 1022
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener2:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V

    goto :goto_23

    .line 1023
    :cond_18
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_23

    .line 1024
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener2:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 1172
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x2

    if-eq v0, v1, :cond_17

    .line 1178
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1174
    :cond_17
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getMaximumPullScroll()I
    .registers 4

    .line 1184
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1c

    .line 1189
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 1186
    :cond_1c
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 1031
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    .line 1037
    invoke-virtual {p0, v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setOrientation(I)V

    goto :goto_17

    .line 1033
    :cond_14
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setOrientation(I)V

    :goto_17
    const/16 v0, 0x11

    .line 1041
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setGravity(I)V

    .line 1043
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mTouchSlop:I

    .line 1047
    sget-object v0, Lcom/keephealth/android/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0xc

    .line 1049
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1050
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 1053
    :cond_3e
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1054
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    .line 1060
    :cond_4e
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1061
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1064
    sget-object p2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    .line 1065
    sget-object p2, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    const/16 p1, 0xe

    .line 1070
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7b

    .line 1071
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 1073
    iget-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_93

    .line 1075
    :cond_7b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 1076
    const-string p1, "ptrAdapterViewBackground"

    const-string p2, "ptrRefreshableViewBackground"

    invoke-static {p1, p2}, Lcom/keephealth/android/views/pullscrollview/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 1079
    iget-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_93
    :goto_93
    const/16 p1, 0xd

    .line 1083
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 1084
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOverScrollEnabled:Z

    :cond_a1
    const/16 p1, 0x10

    .line 1087
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_af

    .line 1088
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1094
    :cond_af
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1095
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1098
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->updateUIForMode()V

    return-void
.end method

.method private isReadyForPull()Z
    .registers 5

    .line 1102
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v2, 0x2

    if-eq v0, v2, :cond_24

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_15

    return v3

    .line 1108
    :cond_15
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v3

    :cond_23
    :goto_23
    return v1

    .line 1104
    :cond_24
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    return v0

    .line 1106
    :cond_29
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    return v0
.end method

.method private pullEvent()V
    .registers 7

    .line 1125
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    .line 1132
    iget v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mInitialMotionY:F

    .line 1133
    iget v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    goto :goto_18

    .line 1127
    :cond_14
    iget v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mInitialMotionX:F

    .line 1128
    iget v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    .line 1137
    :goto_18
    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    iget-object v4, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eq v3, v1, :cond_36

    sub-float/2addr v0, v2

    .line 1144
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1145
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getHeaderSize()I

    move-result v2

    goto :goto_44

    :cond_36
    sub-float/2addr v0, v2

    .line 1139
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1140
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getFooterSize()I

    move-result v2

    .line 1149
    :goto_44
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setHeaderScroll(I)V

    if-eqz v0, :cond_95

    .line 1151
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isRefreshing()Z

    move-result v3

    if-nez v3, :cond_95

    .line 1152
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 1153
    sget-object v4, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    iget-object v5, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_68

    .line 1159
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->onPull(F)V

    goto :goto_6d

    .line 1155
    :cond_68
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->onPull(F)V

    .line 1163
    :goto_6d
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_82

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v2, v1, :cond_82

    .line 1164
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    goto :goto_95

    .line 1165
    :cond_82
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    if-ne v1, v3, :cond_95

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v2, v0, :cond_95

    .line 1166
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    :cond_95
    :goto_95
    return-void
.end method

.method private final smoothScrollTo(IJ)V
    .registers 11

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1200
    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method private final smoothScrollTo(IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 15

    .line 1205
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_7

    .line 1206
    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1210
    :cond_7
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    .line 1216
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getScrollY()I

    move-result v0

    goto :goto_1f

    .line 1212
    :cond_1b
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getScrollX()I

    move-result v0

    :goto_1f
    move v3, v0

    if-eq v3, p1, :cond_46

    .line 1221
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2d

    .line 1223
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1225
    :cond_2d
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$SmoothScrollRunnable;

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_43

    .line 1228
    invoke-virtual {p0, v0, p4, p5}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46

    .line 1230
    :cond_43
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    :cond_46
    :goto_46
    return-void
.end method

.method private final smoothScrollToAndBack(I)V
    .registers 9

    .line 1236
    new-instance v6, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$3;-><init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 141
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2a

    .line 142
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 144
    :cond_2a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const/4 v0, -0x1

    .line 539
    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;
    .registers 6

    .line 543
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;

    .line 544
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v1

    .line 543
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    move-result-object p1

    const/4 p2, 0x4

    .line 545
    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setVisibility(I)V

    return-object p1
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;
    .registers 4

    .line 554
    new-instance v0, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;-><init>()V

    if-eqz p1, :cond_14

    .line 556
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 557
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->addLayout(Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;)V

    :cond_14
    if-eqz p2, :cond_23

    .line 559
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 560
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;->addLayout(Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;)V

    :cond_23
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollToAndBack(I)V

    return v1

    .line 153
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 154
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getFooterSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollToAndBack(I)V

    return v1

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .registers 2

    const/4 v0, 0x0

    .line 583
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    return-void
.end method

.method public final getCurrentMode()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;
    .registers 2

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;
    .registers 3

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/LoadingLayoutProxy;

    move-result-object p1

    return-object p1
.end method

.method public final getMode()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .registers 2

    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .registers 2

    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .registers 2

    return-void
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isPullToRefreshEnabled()Z
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 213
    invoke-static {v0}, Lcom/keephealth/android/views/pullscrollview/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 229
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 233
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    goto/16 :goto_d6

    :cond_14
    if-eqz v0, :cond_1b

    .line 240
    iget-boolean v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v3, :cond_1b

    return v2

    :cond_1b
    if-eqz v0, :cond_bb

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    goto/16 :goto_d3

    .line 247
    :cond_22
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_2d

    return v2

    .line 251
    :cond_2d
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPull()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 257
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_52

    .line 264
    iget v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    sub-float v1, v0, v1

    .line 265
    iget v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, p1, v3

    goto :goto_5a

    .line 259
    :cond_52
    iget v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    sub-float v1, p1, v1

    .line 260
    iget v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v0, v3

    .line 268
    :goto_5a
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 270
    iget v5, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_d3

    iget-boolean v5, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v5, :cond_71

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_d3

    .line 271
    :cond_71
    iget-object v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_96

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_96

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 272
    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    .line 273
    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    .line 274
    iput-boolean v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 275
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_d3

    .line 276
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    goto :goto_d3

    .line 278
    :cond_96
    iget-object v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_d3

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_d3

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 279
    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    .line 280
    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    .line 281
    iput-boolean v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 282
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_d3

    .line 283
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    goto :goto_d3

    .line 291
    :cond_bb
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPull()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mInitialMotionX:F

    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    .line 294
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 299
    :cond_d3
    :goto_d3
    iget-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    return p1

    .line 236
    :cond_d6
    :goto_d6
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    return v1
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected onPullToRefresh()V
    .registers 3

    .line 664
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 669
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_1c

    .line 666
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->pullToRefresh()V

    :goto_1c
    return-void
.end method

.method public final onRefreshComplete()V
    .registers 3

    .line 304
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 305
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    :cond_e
    return-void
.end method

.method protected onRefreshing(Z)V
    .registers 4

    .line 684
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 685
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->refreshing()V

    .line 687
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 688
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->refreshing()V

    :cond_1a
    if-eqz p1, :cond_4b

    .line 692
    iget-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz p1, :cond_46

    .line 695
    new-instance p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$1;-><init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V

    .line 702
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3e

    .line 709
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(ILcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_4e

    .line 705
    :cond_3e
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getFooterSize()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(ILcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_4e

    :cond_46
    const/4 p1, 0x0

    .line 713
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_4e

    .line 717
    :cond_4b
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->callRefreshListener()V

    :goto_4e
    return-void
.end method

.method protected onReleaseToRefresh()V
    .registers 3

    .line 726
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 731
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_1c

    .line 728
    :cond_17
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->releaseToRefresh()V

    :goto_1c
    return-void
.end method

.method protected onReset()V
    .registers 3

    const/4 v0, 0x0

    .line 744
    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    const/4 v1, 0x1

    .line 745
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 748
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->reset()V

    .line 749
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->reset()V

    .line 751
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(I)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    .line 756
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_57

    .line 757
    check-cast p1, Landroid/os/Bundle;

    .line 759
    const-string v0, "ptr_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setMode(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V

    .line 760
    const-string v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 762
    const-string v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 763
    const-string v0, "ptr_show_refreshing_view"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 766
    const-string v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 768
    const-string v0, "ptr_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->mapIntToValue(I)Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    move-result-object v0

    .line 769
    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    if-eq v0, v3, :cond_4c

    sget-object v3, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    if-ne v0, v3, :cond_53

    .line 770
    :cond_4c
    new-array v3, v2, [Z

    aput-boolean v2, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    .line 774
    :cond_53
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    return-void

    .line 778
    :cond_57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 783
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 787
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 789
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->getIntValue()I

    move-result v1

    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getIntValue()I

    move-result v1

    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getIntValue()I

    move-result v1

    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 792
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 793
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 794
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .registers 8

    .line 802
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onSizeChanged. W: %d, H: %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 808
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 811
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 817
    new-instance p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$2;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$2;-><init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 312
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 317
    :cond_8
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 321
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_21

    return v1

    .line 325
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_74

    if-eq v0, v2, :cond_44

    const/4 v3, 0x2

    if-eq v0, v3, :cond_30

    const/4 p1, 0x3

    if-eq v0, p1, :cond_44

    goto :goto_8b

    .line 327
    :cond_30
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v0, :cond_8b

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    .line 330
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->pullEvent()V

    return v2

    .line 347
    :cond_44
    iget-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz p1, :cond_8b

    .line 348
    iput-boolean v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mIsBeingDragged:Z

    .line 350
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    if-ne p1, v0, :cond_62

    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener2:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;

    if-eqz p1, :cond_62

    .line 352
    :cond_58
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    return v2

    .line 357
    :cond_62
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 358
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(I)V

    return v2

    .line 364
    :cond_6c
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->RESET:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    new-array v0, v1, [Z

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    return v2

    .line 337
    :cond_74
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isReadyForPull()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionY:F

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mInitialMotionX:F

    iput p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLastMotionX:F

    return v2

    :cond_8b
    :goto_8b
    return v1
.end method

.method protected final refreshLoadingViewsSize()V
    .registers 10

    .line 830
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 832
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPaddingLeft()I

    move-result v1

    .line 833
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPaddingTop()I

    move-result v2

    .line 834
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 835
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPaddingBottom()I

    move-result v4

    .line 837
    sget-object v5, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_4f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2e

    goto :goto_6f

    .line 855
    :cond_2e
    iget-object v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 856
    iget-object v2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v2, v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setHeight(I)V

    neg-int v2, v0

    goto :goto_3e

    :cond_3d
    move v2, v7

    .line 862
    :goto_3e
    iget-object v4, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 863
    iget-object v4, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v4, v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setHeight(I)V

    neg-int v4, v0

    goto :goto_6f

    :cond_4d
    move v4, v7

    goto :goto_6f

    .line 839
    :cond_4f
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 840
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setWidth(I)V

    neg-int v1, v0

    goto :goto_5f

    :cond_5e
    move v1, v7

    .line 846
    :goto_5f
    iget-object v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 847
    iget-object v3, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v3, v0}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setWidth(I)V

    neg-int v3, v0

    goto :goto_6f

    :cond_6e
    move v3, v7

    .line 872
    :goto_6f
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "PullToRefresh"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setPadding(IIII)V

    return-void
.end method

.method protected final refreshRefreshableViewSize(II)V
    .registers 6

    .line 880
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 882
    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1b

    goto :goto_32

    .line 890
    :cond_1b
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq p1, p2, :cond_32

    .line 891
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 892
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_32

    .line 884
    :cond_27
    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq p2, p1, :cond_32

    .line 885
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 886
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_32
    :goto_32
    return-void
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 380
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .registers 2

    .line 385
    iput-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFilterTouchEvents:Z

    return-void
.end method

.method protected final setHeaderScroll(I)V
    .registers 5

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHeaderScroll: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    neg-int v1, v0

    .line 911
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 913
    iget-boolean v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    if-gez p1, :cond_2e

    .line 915
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_41

    :cond_2e
    if-lez p1, :cond_36

    .line 917
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_41

    .line 919
    :cond_36
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->setVisibility(I)V

    .line 934
    :cond_41
    :goto_41
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_58

    const/4 v2, 0x2

    if-eq v0, v2, :cond_54

    goto :goto_5b

    .line 936
    :cond_54
    invoke-virtual {p0, v1, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->scrollTo(II)V

    goto :goto_5b

    .line 939
    :cond_58
    invoke-virtual {p0, p1, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->scrollTo(II)V

    :goto_5b
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 389
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 393
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 4

    .line 397
    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3

    .line 403
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final setMode(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_1d

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting mode to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    .line 413
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->updateUIForMode()V

    :cond_1d
    return-void
.end method

.method public setOnPullEventListener(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnPullEventListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2<",
            "TT;>;)V"
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener2:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;

    const/4 p1, 0x0

    .line 430
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener;

    const/4 p1, 0x0

    .line 424
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnRefreshListener2:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 434
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 4

    .line 438
    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 442
    invoke-static {}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->getDefault()Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    move-result-object p1

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->DISABLED:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    :goto_9
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setMode(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .registers 2

    .line 447
    iput-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOverScrollEnabled:Z

    return-void
.end method

.method public final setRefreshing()V
    .registers 2

    const/4 v0, 0x1

    .line 452
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setRefreshing(Z)V

    return-void
.end method

.method public final setRefreshing(Z)V
    .registers 5

    .line 457
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 458
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V

    :cond_11
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 463
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 4

    .line 467
    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 472
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V
    .registers 4

    .line 476
    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/keephealth/android/views/pullscrollview/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .registers 2

    .line 376
    iput-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .registers 2

    .line 486
    iput-boolean p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return-void
.end method

.method final varargs setState(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;[Z)V
    .registers 4

    .line 496
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "State: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PullToRefresh"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$4;->$SwitchMap$com$keephealth$android$views$pullscrollview$PullToRefreshBase$State:[I

    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    invoke-virtual {v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_45

    const/4 v0, 0x2

    if-eq p1, v0, :cond_41

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_36

    const/4 v0, 0x5

    if-eq p1, v0, :cond_36

    goto :goto_48

    :cond_36
    const/4 p1, 0x0

    .line 513
    aget-boolean p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_48

    .line 509
    :cond_3d
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_48

    .line 506
    :cond_41
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_48

    .line 503
    :cond_45
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->onReset()V

    .line 521
    :goto_48
    iget-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mOnPullEventListener:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;

    if-eqz p1, :cond_53

    .line 522
    iget-object p2, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mState:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;

    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-interface {p1, p0, p2, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$State;Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;)V

    :cond_53
    return-void
.end method

.method protected final smoothScrollTo(I)V
    .registers 4

    .line 951
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(IJ)V

    return-void
.end method

.method protected final smoothScrollTo(ILcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .registers 11

    .line 962
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(IJJLcom/keephealth/android/views/pullscrollview/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .registers 4

    .line 972
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->smoothScrollTo(IJ)V

    return-void
.end method

.method protected updateUIForMode()V
    .registers 4

    .line 982
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 985
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_11

    .line 986
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 988
    :cond_11
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 989
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mHeaderLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 993
    :cond_1f
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2c

    .line 994
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 996
    :cond_2c
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 997
    iget-object v1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mFooterLayout:Lcom/keephealth/android/views/pullscrollview/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    :cond_39
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1005
    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    sget-object v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->BOTH:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_45

    iget-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    goto :goto_47

    :cond_45
    sget-object v0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    :goto_47
    iput-object v0, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;->mCurrentMode:Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase$Mode;

    return-void
.end method
