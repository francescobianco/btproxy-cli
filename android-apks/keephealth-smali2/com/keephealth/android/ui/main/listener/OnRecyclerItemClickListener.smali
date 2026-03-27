.class public abstract Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;
.super Ljava/lang/Object;
.source "OnRecyclerItemClickListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener$1;)V

    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 26
    iget-object p1, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onItemClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    .line 32
    iget-object p1, p0, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
