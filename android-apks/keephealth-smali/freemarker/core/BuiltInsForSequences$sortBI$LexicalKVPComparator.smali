.class Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;
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
    name = "LexicalKVPComparator"
.end annotation


# instance fields
.field private collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .registers 2

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 630
    iget-object v0, p0, Lfreemarker/core/BuiltInsForSequences$sortBI$LexicalKVPComparator;->collator:Ljava/text/Collator;

    check-cast p1, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    .line 631
    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p1}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;

    # getter for: Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->key:Ljava/lang/Object;
    invoke-static {p2}, Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;->access$1500(Lfreemarker/core/BuiltInsForSequences$sortBI$KVP;)Ljava/lang/Object;

    move-result-object p2

    .line 630
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
