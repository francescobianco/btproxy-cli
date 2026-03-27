.class Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;
.super Ljava/lang/Object;
.source "RecyclerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    iput p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 120
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->access$100(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    iget v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->val$position:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->notifyItemRemoved(I)V

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->notifyDataSetChanged()V

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    iget-object p1, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mOnDeleContactItemLising:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;

    if-eqz p1, :cond_2a

    .line 125
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    iget-object p1, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mOnDeleContactItemLising:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->access$100(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;->onDeleContactItem(Ljava/util/List;)V

    :cond_2a
    return-void
.end method
