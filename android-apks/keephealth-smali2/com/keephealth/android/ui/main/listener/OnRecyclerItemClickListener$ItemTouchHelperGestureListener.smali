.class Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnRecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$1;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;

    # getter for: Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->access$100(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;

    # getter for: Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->access$100(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_23
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;

    # getter for: Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->access$100(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;

    # getter for: Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->access$100(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_23
    const/4 p1, 0x1

    return p1
.end method
