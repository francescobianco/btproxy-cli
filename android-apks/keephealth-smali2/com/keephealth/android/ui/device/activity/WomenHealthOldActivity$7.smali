.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$7;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 2

    .line 988
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 991
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 992
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    return-void
.end method
