.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$1;
.super Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;
.source "MainFragmentNewTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 283
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$1;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-direct {p0, p2}, Lcom/keephealth/android/ui/main/listener/OnRecyclerItemClickListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 292
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$1;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$1;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->helper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$1;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x46

    .line 295
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_30
    return-void
.end method
