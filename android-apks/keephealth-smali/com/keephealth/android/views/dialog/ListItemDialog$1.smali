.class Lcom/keephealth/android/views/dialog/ListItemDialog$1;
.super Ljava/lang/Object;
.source "ListItemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/dialog/ListItemDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/dialog/ListItemDialog;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$1;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 116
    iget-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$1;->this$0:Lcom/keephealth/android/views/dialog/ListItemDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/ListItemDialog;->dismiss()V

    return-void
.end method
