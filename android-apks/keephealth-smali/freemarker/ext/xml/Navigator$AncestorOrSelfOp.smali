.class Lfreemarker/ext/xml/Navigator$AncestorOrSelfOp;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Lfreemarker/ext/xml/NodeOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/xml/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AncestorOrSelfOp"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/xml/Navigator;


# direct methods
.method private constructor <init>(Lfreemarker/ext/xml/Navigator;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lfreemarker/ext/xml/Navigator$AncestorOrSelfOp;->this$0:Lfreemarker/ext/xml/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/Navigator$AncestorOrSelfOp;-><init>(Lfreemarker/ext/xml/Navigator;)V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 182
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object p2, p0, Lfreemarker/ext/xml/Navigator$AncestorOrSelfOp;->this$0:Lfreemarker/ext/xml/Navigator;

    # invokes: Lfreemarker/ext/xml/Navigator;->getAncestors(Ljava/lang/Object;Ljava/util/List;)V
    invoke-static {p2, p1, p4}, Lfreemarker/ext/xml/Navigator;->access$1600(Lfreemarker/ext/xml/Navigator;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method
