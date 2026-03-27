.class Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;
.super Ljava/lang/Object;
.source "WeightRecordAdapter.java"

# interfaces
.implements Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->render(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;Lcom/keephealth/android/ui/main/bean/ChildEntity;IILandroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

.field final synthetic val$childPosition:I

.field final synthetic val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntity;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;IILcom/keephealth/android/ui/main/bean/ChildEntity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    iput p2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->val$groupPosition:I

    iput p3, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->val$childPosition:I

    iput-object p4, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 2

    return-void
.end method

.method public onClick(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 2

    return-void
.end method

.method public onClosed(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 3

    .line 221
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    const/4 v0, -0x1

    # setter for: Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->access$102(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;I)I

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    # setter for: Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentChildPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->access$202(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;I)I

    .line 223
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/bean/ChildEntity;->isOpen:Z

    return-void
.end method

.method public onOpened(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 5

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_26

    .line 209
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)I

    move-result v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentChildPosition:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->access$200(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntity;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/ChildEntity;->getViewHolder()Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;

    move-result-object v0

    .line 211
    iget-object v0, v0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SwipeDragLayout;->smoothClose(Z)V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/bean/ChildEntity;->isOpen:Z

    .line 214
    :cond_26
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->val$groupPosition:I

    # setter for: Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentGroupPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->access$102(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;I)I

    .line 215
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->val$childPosition:I

    # setter for: Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->currentChildPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;->access$202(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;I)I

    .line 216
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntity;

    iput-boolean v1, p1, Lcom/keephealth/android/ui/main/bean/ChildEntity;->isOpen:Z

    return-void
.end method

.method public onStartClose(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 2

    return-void
.end method

.method public onStartOpen(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 2

    return-void
.end method

.method public onUpdate(Lcom/keephealth/android/views/SwipeDragLayout;F)V
    .registers 3

    return-void
.end method
