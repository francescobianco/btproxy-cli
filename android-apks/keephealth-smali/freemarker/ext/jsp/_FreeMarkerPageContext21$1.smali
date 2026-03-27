.class Lfreemarker/ext/jsp/_FreeMarkerPageContext21$1;
.super Ljava/lang/Object;
.source "_FreeMarkerPageContext21.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/_FreeMarkerPageContext21;->getExpressionEvaluator()Ljavax/servlet/jsp/el/ExpressionEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/jsp/_FreeMarkerPageContext21;


# direct methods
.method constructor <init>(Lfreemarker/ext/jsp/_FreeMarkerPageContext21;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lfreemarker/ext/jsp/_FreeMarkerPageContext21$1;->this$0:Lfreemarker/ext/jsp/_FreeMarkerPageContext21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
