.class Lfreemarker/core/BuiltInsForSequences$sortBI$DateKVPComparator;
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
    name = "DateKVPComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForSequences$1;)V
    .registers 2

    .line 603
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForSequences$sortBI$DateKVPComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 606
    check-cast p1, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    check-cast p2, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    .line 607
    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    .line 606
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method
