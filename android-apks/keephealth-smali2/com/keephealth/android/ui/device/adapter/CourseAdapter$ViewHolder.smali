.class public Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "CourseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/CourseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field et_course_item:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090172
    .end annotation
.end field

.field img_course_item:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022c
    .end annotation
.end field

.field rela_course:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b1
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

.field tv_course_id:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090730
    .end annotation
.end field

.field view_item_course:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907c7
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;Landroid/view/View;)V
    .registers 3

    .line 325
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    .line 326
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
