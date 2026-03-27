.class Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$sortBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumericalKVPComparator"
.end annotation


# instance fields
.field private ae:Lfreemarker/core/ArithmeticEngine;


# direct methods
.method private constructor <init>(Lfreemarker/core/ArithmeticEngine;)V
    .registers 2

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;->ae:Lfreemarker/core/ArithmeticEngine;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/ArithmeticEngine;Lfreemarker/core/BuiltInsForSequences$1;)V
    .registers 3

    .line 634
    invoke-direct {p0, p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;-><init>(Lfreemarker/core/ArithmeticEngine;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 643
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$NumericalKVPComparator;->ae:Lfreemarker/core/ArithmeticEngine;

    check-cast p1, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    .line 644
    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    check-cast p2, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    .line 645
    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    .line 643
    invoke-virtual {v0, p1, p2}, Lfreemarker/core/ArithmeticEngine;->compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p1
    :try_end_16
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    :catch_17
    move-exception p1

    .line 647
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to compare numbers: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
