.class public Lcom/keephealth/android/views/SpaceGridItemMainMenuHide;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpaceGridItemMainMenuHide.java"


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/keephealth/android/views/SpaceGridItemMainMenuHide;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_17

    const/high16 p2, 0x41000000    # 8.0f

    .line 25
    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 26
    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1f

    :cond_17
    const/high16 p2, 0x41800000    # 16.0f

    .line 28
    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :goto_1f
    return-void
.end method
