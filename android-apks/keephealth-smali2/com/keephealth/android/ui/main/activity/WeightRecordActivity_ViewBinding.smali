.class public Lcom/keephealth/android/ui/main/activity/WeightRecordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WeightRecordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;)V
    .registers 3

    .line 20
    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;Landroid/view/View;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;

    .line 27
    const-string v0, "field \'mRecyclerView\'"

    const-class v1, Landroid/widget/ExpandableListView;

    const v2, 0x7f0903dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    .line 28
    const-string v0, "field \'layoutNoData\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090318

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->layoutNoData:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity_ViewBinding;->target:Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->mRecyclerView:Landroid/widget/ExpandableListView;

    .line 39
    iput-object v1, v0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->layoutNoData:Landroid/widget/LinearLayout;

    return-void

    .line 35
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
