.class Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AllDataBloodPressRecordAdapter.java"


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

.field final synthetic val$convertView:Landroid/view/View;

.field final synthetic val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

.field final synthetic val$groupPosition:I

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 7

    .line 222
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    iput-object p3, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$parent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$convertView:Landroid/view/View;

    iput p5, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$groupPosition:I

    iput p6, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$childPosition:I

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 11

    .line 225
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$300(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    const/4 v0, -0x1

    # setter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentGroupPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$102(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I

    .line 227
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    # setter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->currentChildPosition:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$202(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;I)I

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$entity:Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/ui/main/bean/ChildEntityAllData;->isOpen:Z

    .line 229
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->mOnSwipeChildClickListener:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->access$300(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;

    move-result-object v0

    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$parent:Landroid/view/ViewGroup;

    move-object v1, p1

    check-cast v1, Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$convertView:Landroid/view/View;

    iget v3, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$groupPosition:I

    iget v4, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->val$childPosition:I

    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$2;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    int-to-long v5, v3

    int-to-long v7, v4

    .line 230
    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 229
    invoke-interface/range {v0 .. v6}, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$OnSwipeChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    :cond_34
    return-void
.end method
