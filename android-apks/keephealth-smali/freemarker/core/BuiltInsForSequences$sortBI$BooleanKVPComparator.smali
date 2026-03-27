.class Lfreemarker/core/BuiltInsForSequences$sortBI$BooleanKVPComparator;
.super Ljava/lang/Object;
.source "BuiltInsForSequences.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForSequences$sortBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanKVPComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$1;)V
    .registers 2

    .line 590
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$sortBI$BooleanKVPComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 594
    check-cast p1, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 595
    check-cast p2, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_1d

    xor-int/lit8 p1, p2, 0x1

    return p1

    :cond_1d
    if-eqz p2, :cond_21

    const/4 p1, -0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method
