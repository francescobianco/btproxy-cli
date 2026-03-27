.class Lcom/keephealth/android/ui/device/adapter/CourseAdapter$3;
.super Ljava/lang/Object;
.source "CourseAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$3;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    .line 198
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCanUpdate:Z

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    .line 200
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isCanUpdate:Z

    :goto_9
    return-void
.end method
