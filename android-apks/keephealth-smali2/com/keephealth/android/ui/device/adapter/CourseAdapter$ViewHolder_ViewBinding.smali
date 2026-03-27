.class public Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "CourseAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    .line 24
    const-string v0, "field \'tv_course_id\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090730

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->tv_course_id:Landroid/widget/TextView;

    .line 25
    const-string v0, "field \'et_course_item\'"

    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f090172

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    .line 26
    const-string v0, "field \'img_course_item\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09022c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->img_course_item:Landroid/widget/ImageView;

    const v0, 0x7f0907c7

    .line 27
    const-string v1, "field \'view_item_course\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->view_item_course:Landroid/view/View;

    .line 28
    const-string v0, "field \'rela_course\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904b1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->rela_course:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->tv_course_id:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->et_course_item:Landroid/widget/EditText;

    .line 40
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->img_course_item:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->view_item_course:Landroid/view/View;

    .line 42
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->rela_course:Landroid/widget/RelativeLayout;

    return-void

    .line 35
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
