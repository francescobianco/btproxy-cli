.class public Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;
.super Ljava/lang/Object;
.source "XueTangNumericWheelAdapter.java"

# interfaces
.implements Lcom/keephealth/android/views/wheel/WheelAdapter;


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private format:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I

.field public scale:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;-><init>(IILjava/lang/String;)V

    .line 69
    iput p3, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->scale:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->scale:I

    .line 83
    iput p1, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->minValue:I

    .line 84
    iput p2, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->maxValue:I

    .line 85
    iput-object p3, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .registers 6

    if-ltz p1, :cond_4c

    .line 90
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_4c

    .line 91
    iget v0, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "value:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ggrr3"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz p1, :cond_34

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->format:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4b

    :cond_34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4b
    return-object p1

    :cond_4c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .registers 3

    .line 101
    iget v0, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->scale:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMaximumLength()I
    .registers 3

    .line 106
    iget v0, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->maxValue:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->minValue:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 108
    iget v1, p0, Lcom/keephealth/android/views/wheel/XueTangNumericWheelAdapter;->minValue:I

    if-gez v1, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    return v0
.end method
