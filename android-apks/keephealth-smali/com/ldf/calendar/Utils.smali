.class public final Lcom/ldf/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static customScrollToBottom:Z

.field private static markData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static top:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ldf/calendar/Utils;->markData:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 262
    sput-boolean v0, Lcom/ldf/calendar/Utils;->customScrollToBottom:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcOffset(III)I
    .registers 3

    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method public static calculateMonthOffset(IILcom/ldf/calendar/model/CalendarDate;)I
    .registers 4

    .line 128
    invoke-virtual {p2}, Lcom/ldf/calendar/model/CalendarDate;->getYear()I

    move-result v0

    .line 129
    invoke-virtual {p2}, Lcom/ldf/calendar/model/CalendarDate;->getMonth()I

    move-result p2

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xc

    sub-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method public static cleanMarkData()V
    .registers 1

    .line 166
    sget-object v0, Lcom/ldf/calendar/Utils;->markData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static dpi2px(Landroid/content/Context;F)I
    .registers 2

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static getDateFromString(II)Ljava/util/Date;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x9

    if-le p1, v0, :cond_18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_27

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "-01"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 111
    :try_start_3a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_45
    .catch Ljava/text/ParseException; {:try_start_3a .. :try_end_45} :catch_46

    goto :goto_50

    :catch_46
    move-exception p0

    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_50
    return-object p1
.end method

.method public static getDay()I
    .registers 2

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getFirstDayWeekPosition(IILcom/ldf/calendar/component/CalendarAttr$WeekArrayType;)I
    .registers 5

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 86
    invoke-static {p0, p1}, Lcom/ldf/calendar/Utils;->getDateFromString(II)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 87
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 88
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    if-ne p2, v1, :cond_17

    return p1

    .line 91
    :cond_17
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p2, p1, 0x5

    if-lt p2, p0, :cond_21

    add-int/lit8 p2, p1, -0x2

    :cond_21
    return p2
.end method

.method public static getMonth()I
    .registers 2

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getMonthDays(II)I
    .registers 8

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-le p1, v1, :cond_9

    add-int/lit8 p0, p0, 0x1

    move p1, v0

    goto :goto_e

    :cond_9
    if-ge p1, v0, :cond_e

    add-int/lit8 p0, p0, -0x1

    move p1, v1

    .line 50
    :cond_e
    :goto_e
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x1f

    aput v3, v1, v2

    const/16 v4, 0x1c

    aput v4, v1, v0

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v4, 0x3

    const/16 v5, 0x1e

    aput v5, v1, v4

    const/4 v4, 0x4

    aput v3, v1, v4

    const/4 v4, 0x5

    aput v5, v1, v4

    const/4 v4, 0x6

    aput v3, v1, v4

    const/4 v4, 0x7

    aput v3, v1, v4

    const/16 v4, 0x8

    aput v5, v1, v4

    const/16 v4, 0x9

    aput v3, v1, v4

    const/16 v4, 0xa

    aput v5, v1, v4

    const/16 v4, 0xb

    aput v3, v1, v4

    .line 53
    rem-int/lit8 v3, p0, 0x4

    if-nez v3, :cond_45

    rem-int/lit8 v3, p0, 0x64

    if-nez v3, :cond_49

    :cond_45
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_4d

    :cond_49
    const/16 p0, 0x1d

    .line 54
    aput p0, v1, v0

    :cond_4d
    sub-int/2addr p1, v0

    .line 57
    :try_start_4e
    aget v2, v1, p1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_55
    return v2
.end method

.method public static getSaturday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;
    .registers 6

    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/ldf/calendar/model/CalendarDate;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    :try_start_8
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_1f

    :catch_14
    move-exception p0

    .line 252
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 254
    :goto_1f
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 255
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr p0, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 256
    new-instance p0, Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 257
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 258
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>(III)V

    return-object p0
.end method

.method public static getSunday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;
    .registers 6

    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/ldf/calendar/model/CalendarDate;->toString()Ljava/lang/String;

    move-result-object p0

    .line 222
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 224
    :try_start_d
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-M-d"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_23

    :catch_19
    move-exception p0

    .line 227
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    :goto_23
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x7

    .line 230
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_38

    .line 231
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 233
    :cond_38
    new-instance p0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x2

    .line 234
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 235
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v1, v4, v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>(III)V

    return-object p0
.end method

.method public static getTouchSlop(Landroid/content/Context;)I
    .registers 1

    .line 210
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    return p0
.end method

.method public static getYear()I
    .registers 2

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static isScrollToBottom()Z
    .registers 1

    .line 270
    sget-boolean v0, Lcom/ldf/calendar/Utils;->customScrollToBottom:Z

    return v0
.end method

.method public static loadMarkData()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/ldf/calendar/Utils;->markData:Ljava/util/HashMap;

    return-object v0
.end method

.method public static loadTop()I
    .registers 1

    .line 315
    sget v0, Lcom/ldf/calendar/Utils;->top:I

    return v0
.end method

.method public static saveTop(I)V
    .registers 1

    .line 311
    sput p0, Lcom/ldf/calendar/Utils;->top:I

    return-void
.end method

.method public static scroll(Landroid/view/View;III)I
    .registers 5

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int p1, v0, p1

    .line 198
    invoke-static {p1, p2, p3}, Lcom/ldf/calendar/Utils;->calcOffset(III)I

    move-result p1

    sub-int/2addr p1, v0

    .line 199
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    neg-int p0, p1

    return p0
.end method

.method public static scrollTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 11

    .line 292
    new-instance v6, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 293
    sget v2, Lcom/ldf/calendar/Utils;->top:I

    const/4 v3, 0x0

    sub-int v4, p2, v2

    const/4 v1, 0x0

    move-object v0, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 294
    new-instance p2, Lcom/ldf/calendar/Utils$1;

    invoke-direct {p2, v6, p1, p0}, Lcom/ldf/calendar/Utils$1;-><init>(Landroid/widget/Scroller;Landroidx/recyclerview/widget/RecyclerView;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMarkData(Ljava/util/HashMap;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    sput-object p0, Lcom/ldf/calendar/Utils;->markData:Ljava/util/HashMap;

    return-void
.end method

.method public static setScrollToBottom(Z)V
    .registers 1

    .line 279
    sput-boolean p0, Lcom/ldf/calendar/Utils;->customScrollToBottom:Z

    return-void
.end method
