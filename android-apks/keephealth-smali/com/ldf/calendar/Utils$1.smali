.class Lcom/ldf/calendar/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ldf/calendar/Utils;->scrollTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$child:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic val$scroller:Landroid/widget/Scroller;


# direct methods
.method constructor <init>(Landroid/widget/Scroller;Landroidx/recyclerview/widget/RecyclerView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/ldf/calendar/Utils$1;->val$scroller:Landroid/widget/Scroller;

    iput-object p2, p0, Lcom/ldf/calendar/Utils$1;->val$child:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/ldf/calendar/Utils$1;->val$parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/ldf/calendar/Utils$1;->val$scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 300
    iget-object v0, p0, Lcom/ldf/calendar/Utils$1;->val$scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/ldf/calendar/Utils$1;->val$child:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 301
    iget-object v1, p0, Lcom/ldf/calendar/Utils$1;->val$child:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->offsetTopAndBottom(I)V

    .line 302
    iget-object v0, p0, Lcom/ldf/calendar/Utils$1;->val$child:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v0

    invoke-static {v0}, Lcom/ldf/calendar/Utils;->saveTop(I)V

    .line 303
    iget-object v0, p0, Lcom/ldf/calendar/Utils$1;->val$parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/ldf/calendar/Utils$1;->val$child:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/ldf/calendar/Utils$1;->val$child:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2f
    return-void
.end method
