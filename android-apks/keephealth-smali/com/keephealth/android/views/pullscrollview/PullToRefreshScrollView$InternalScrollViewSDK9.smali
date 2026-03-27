.class final Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;
.super Landroid/widget/ScrollView;
.source "PullToRefreshScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalScrollViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;

    .line 81
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getScrollRange()I
    .registers 5

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    .line 104
    invoke-virtual {p0, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_22
    return v1
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 19

    .line 88
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    move-object v1, p0

    .line 92
    iget-object v2, v1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->this$0:Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;

    .line 93
    invoke-direct {p0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView$InternalScrollViewSDK9;->getScrollRange()I

    move-result v7

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    move/from16 v8, p9

    .line 92
    invoke-static/range {v2 .. v8}, Lcom/keephealth/android/views/pullscrollview/OverscrollHelper;->overScrollBy(Lcom/keephealth/android/views/pullscrollview/PullToRefreshBase;IIIIIZ)V

    return v0
.end method
