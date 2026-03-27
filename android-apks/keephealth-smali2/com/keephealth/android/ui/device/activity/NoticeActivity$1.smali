.class Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/NoticeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V
    .registers 2

    .line 989
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 992
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsMsg:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$000(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 993
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const/16 v0, 0x13

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsMsg:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$000(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_4d

    .line 995
    :cond_18
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$100(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 996
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const/16 v0, 0x11

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCall:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$100(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_4d

    .line 998
    :cond_30
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->checkSelfPermission([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 999
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    const/16 v0, 0x14

    # getter for: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->permissionsCon:[Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestPermissions(I[Ljava/lang/String;)V

    goto :goto_4d

    .line 1001
    :cond_48
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/NoticeActivity;->requestNotice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/NoticeActivity;)V

    :goto_4d
    return-void
.end method
