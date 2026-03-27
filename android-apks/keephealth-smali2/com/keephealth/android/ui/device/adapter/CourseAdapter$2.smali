.class Lcom/keephealth/android/ui/device/adapter/CourseAdapter$2;
.super Ljava/lang/Object;
.source "CourseAdapter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 179
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$2;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1d

    .line 185
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/CourseAdapter$2;->this$0:Lcom/keephealth/android/ui/device/adapter/CourseAdapter;

    # getter for: Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->context:Landroid/content/Context;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/adapter/CourseAdapter;->access$000(Lcom/keephealth/android/ui/device/adapter/CourseAdapter;)Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_1b

    .line 187
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1b
    const/4 p1, 0x1

    return p1

    :cond_1d
    return v0
.end method
