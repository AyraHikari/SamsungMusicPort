.class final Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ExecutorCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorCallbackCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->a:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->b:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public a()Lretrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->b:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public a(Lretrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 60
    invoke-static {p1, v0}, Lretrofit2/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->b:Lretrofit2/Call;

    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    invoke-direct {v1, p0, p1}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;-><init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->a(Lretrofit2/Callback;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 95
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->b:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->b()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->b:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->c()Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->d()Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public d()Lretrofit2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->b:Lretrofit2/Call;

    invoke-interface {v2}, Lretrofit2/Call;->d()Lretrofit2/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v0
.end method
