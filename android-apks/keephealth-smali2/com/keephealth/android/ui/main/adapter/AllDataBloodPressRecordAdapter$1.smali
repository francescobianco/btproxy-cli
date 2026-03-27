.class Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;
.super Ljava/lang/Object;
.source "AllDataBloodPressRecordAdapter.java"

# interfaces
.implements Lcom/keephealth/android/views/SwipeDragLayout$SwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->render(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;IILandroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

.field final synthetic val$childPosition:I

.field final synthetic val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;IILcom/keephealth/android/ui/main/bean/ChildEntityAllData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    iput p2, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->val$groupPosition:I

    iput p3, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->val$childPosition:I

    iput-object p4, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

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

    .line 194
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    const/4 v0, -0x1

    # setter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$102(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I

    .line 195
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    # setter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentChildPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$202(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I

    .line 196
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->isOpen:Z

    return-void
.end method

.method public onOpened(Lcom/keephealth/android/views/SwipeDragLayout;)V
    .registers 5

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_26

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)I

    move-result v0

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentChildPosition:I
    invoke-static {v2}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$200(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->getChild(II)Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->getViewHolder()Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;

    move-result-object v0

    .line 184
    iget-object v0, v0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SwipeDragLayout;->smoothClose(Z)V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->isOpen:Z

    .line 187
    :cond_26
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->val$groupPosition:I

    # setter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$102(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I

    .line 188
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->val$childPosition:I

    # setter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentChildPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$202(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I

    .line 189
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$1;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    iput-boolean v1, p1, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->isOpen:Z

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
