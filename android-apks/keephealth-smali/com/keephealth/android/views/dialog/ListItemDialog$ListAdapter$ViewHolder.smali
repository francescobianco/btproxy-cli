.class Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mLayout:Landroid/widget/RelativeLayout;

.field mTextView:Landroid/widget/TextView;

.field mTitleView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter$ViewHolder;->this$1:Lcom/keephealth/android/views/dialog/ListItemDialog$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
