.class Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$1;
.super Ljava/lang/Object;
.source "CustomTextQ32Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$1;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$1;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
