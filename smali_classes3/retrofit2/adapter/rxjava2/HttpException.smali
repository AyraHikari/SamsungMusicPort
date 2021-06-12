.class public final Lretrofit2/adapter/rxjava2/HttpException;
.super Lretrofit2/HttpException;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    return-void
.end method
