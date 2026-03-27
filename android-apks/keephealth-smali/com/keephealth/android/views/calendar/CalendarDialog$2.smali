.class Lcom/keephealth/android/views/calendar/CalendarDialog$2;
.super Ljava/lang/Object;
.source "CalendarDialog.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/calendar/CalendarDialog;->initMonthPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/calendar/CalendarDialog;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$2;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
