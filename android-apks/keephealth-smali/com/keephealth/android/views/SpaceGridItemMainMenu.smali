.class public Lcom/keephealth/android/views/SpaceGridItemMainMenu;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpaceGridItemMainMenu.java"


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/keephealth/android/views/SpaceGridItemMainMenu;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p4

    if-eqz p4, :cond_25

    .line 25
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1d

    const/high16 p2, 0x41300000    # 11.0f

    .line 26
    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 27
    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_25

    :cond_1d
    const/high16 p2, 0x41900000    # 18.0f

    .line 29
    invoke-static {p2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_25
    :goto_25
    return-void
.end method
