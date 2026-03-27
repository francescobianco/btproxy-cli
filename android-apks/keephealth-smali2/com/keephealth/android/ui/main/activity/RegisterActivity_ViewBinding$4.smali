.class Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RegisterActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$4;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->resiestAccount()V

    return-void
.end method
