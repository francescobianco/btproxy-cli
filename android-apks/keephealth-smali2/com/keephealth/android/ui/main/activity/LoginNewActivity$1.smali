.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$1;
.super Ljava/lang/Object;
.source "LoginNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 186
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->finish()V

    return-void
.end method
