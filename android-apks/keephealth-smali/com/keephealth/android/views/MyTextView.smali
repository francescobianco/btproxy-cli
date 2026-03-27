.class public Lcom/keephealth/android/views/MyTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MyTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/MyTextView$CustomLinkMovementMethod;
    }
.end annotation


# static fields
.field private static final CLICK_DELAY:J = 0x1f4L

.field private static TAG:Ljava/lang/String; = "MyTextView"

.field private static lastClickTime:J


# instance fields
.field public linkHit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Lcom/keephealth/android/views/MyTextView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/keephealth/android/views/MyTextView;->linkHit:Z

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/keephealth/android/views/MyTextView;->linkHit:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 41
    :cond_6
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->performClick()Z

    move-result v0

    return v0
.end method
