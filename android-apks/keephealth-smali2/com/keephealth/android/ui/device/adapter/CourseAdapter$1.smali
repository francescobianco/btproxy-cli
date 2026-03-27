.class Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;
.super Ljava/lang/Object;
.source "CourseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 146
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mdeleCoureListing:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;

    if-eqz p1, :cond_1c

    .line 147
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->deleteItemAtPosition(I)V

    .line 148
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mdeleCoureListing:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$1;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$DeleCoureListing;->deleCourse(I)V

    :cond_1c
    return-void
.end method
