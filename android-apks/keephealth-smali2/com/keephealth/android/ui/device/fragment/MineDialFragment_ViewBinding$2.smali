.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MineDialFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 48
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->toDownLoadHistory()V

    return-void
.end method
