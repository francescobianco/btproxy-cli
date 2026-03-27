.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainFragmentNew_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 3

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->img_close2()V

    return-void
.end method
