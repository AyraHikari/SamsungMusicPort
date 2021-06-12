.class public final Lretrofit2/adapter/rxjava2/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lretrofit2/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/Result;->a:Lretrofit2/Response;

    .line 41
    iput-object p2, p0, Lretrofit2/adapter/rxjava2/Result;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lretrofit2/adapter/rxjava2/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lretrofit2/adapter/rxjava2/Result<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 27
    new-instance v0, Lretrofit2/adapter/rxjava2/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lretrofit2/adapter/rxjava2/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "error == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lretrofit2/Response;)Lretrofit2/adapter/rxjava2/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)",
            "Lretrofit2/adapter/rxjava2/Result<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 33
    new-instance v0, Lretrofit2/adapter/rxjava2/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/adapter/rxjava2/Result;-><init>(Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-object v0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "response == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
