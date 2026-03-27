.class public Lcom/keephealth/android/views/wheel/NumericWheelAdapter;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

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

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;-><init>(IILjava/lang/String;)V

    .line 67
    iput p3, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->scale:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->scale:I

    .line 81
    iput p1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->minValue:I

    .line 82
    iput p2, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->maxValue:I

    .line 83
    iput-object p3, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_28

    .line 88
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_28

    .line 89
    iget v0, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    .line 90
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz p1, :cond_20

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->format:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_20
    iget p1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->scale:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_27
    return-object p1

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .registers 3

    .line 97
    iget v0, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->scale:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMaximumLength()I
    .registers 3

    .line 102
    iget v0, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->maxValue:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->minValue:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 104
    iget v1, p0, Lcom/keephealth/android/views/wheel/NumericWheelAdapter;->minValue:I

    if-gez v1, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    return v0
.end method
