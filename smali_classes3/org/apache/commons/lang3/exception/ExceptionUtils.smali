.class public Lorg/apache/commons/lang3/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "getCause"

    const-string v1, "getNextException"

    const-string v2, "getTargetException"

    const-string v3, "getException"

    const-string v4, "getSourceException"

    const-string v5, "getRootCause"

    const-string v6, "getCausedByException"

    const-string v7, "getNested"

    const-string v8, "getLinkedException"

    const-string v9, "getNestedException"

    const-string v10, "getLinkedCause"

    const-string v11, "getThrowable"

    .line 54
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/exception/ExceptionUtils;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 583
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 584
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 585
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 586
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
