.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainFragmentNewTest_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$4;->val$target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tvClose()V

    return-void
.end method
