.class Lcom/keephealth/android/util/PermissionAddressBookUtils$1;
.super Ljava/lang/Object;
.source "PermissionAddressBookUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/PermissionAddressBookUtils;->alertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/PermissionAddressBookUtils;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/PermissionAddressBookUtils;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils$1;->this$0:Lcom/keephealth/android/util/PermissionAddressBookUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils$1;->this$0:Lcom/keephealth/android/util/PermissionAddressBookUtils;

    # invokes: Lcom/keephealth/android/util/PermissionAddressBookUtils;->jumpPermissionPage()V
    invoke-static {p1}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->access$000(Lcom/keephealth/android/util/PermissionAddressBookUtils;)V

    return-void
.end method
