.class Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;
.super Ljava/lang/Object;
.source "NoticeOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 496
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsMsg:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 497
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsMsg:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_73

    .line 499
    :cond_24
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$200(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 500
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCall:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$200(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_73

    .line 502
    :cond_48
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$300(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 503
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->permissionsCon:[Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$300(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_73

    .line 505
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1$1;->this$1:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->requestNotice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;->access$400(Lcom/keephealth/android/ui/device/activity/NoticeOldActivity;)V

    :goto_73
    return-void
.end method
