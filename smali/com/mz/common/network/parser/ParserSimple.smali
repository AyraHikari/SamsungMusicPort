.class public Lcom/mz/common/network/parser/ParserSimple;
.super Lcom/mz/common/network/parser/ParserNTCommonResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
