.class Lcom/keephealth/android/ui/main/activity/DetailActivity2$3;
.super Ljava/lang/Object;
.source "DetailActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailActivity2;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 242
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$3;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->finish()V

    return-void
.end method
