.class public Lcom/keephealth/android/views/NestedRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "NestedRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .line 22
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 24
    invoke-virtual {p0}, Lcom/keephealth/android/views/NestedRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_19

    .line 25
    invoke-virtual {p0}, Lcom/keephealth/android/views/NestedRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/keephealth/android/views/NestedRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/NestedRecyclerView$1;-><init>(Lcom/keephealth/android/views/NestedRecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    :cond_19
    return-void
.end method
