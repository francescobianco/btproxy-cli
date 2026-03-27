.class Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;I)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    iput p2, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;->val$position:I

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 196
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 197
    iget-object p1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mListener:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->access$000(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;)Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$1;->this$0:Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;

    # getter for: Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->id:I
    invoke-static {v1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;->access$100(Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskIconAdapter$OnItemClickListener;->onItemClick(II)V

    :cond_27
    return-void
.end method
