.class Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->onBindViewHolder(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

.field final synthetic val$holder:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$1;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    iput-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$1;->val$holder:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 103
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p1

    if-nez p1, :cond_11

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$1;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mDragStartListener:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;
    invoke-static {p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->access$000(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;)Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$1;->val$holder:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;

    invoke-interface {p1, p2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_11
    const/4 p1, 0x0

    return p1
.end method
