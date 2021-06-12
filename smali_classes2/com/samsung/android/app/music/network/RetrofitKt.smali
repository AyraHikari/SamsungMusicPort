.class public final Lcom/samsung/android/app/music/network/RetrofitKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lretrofit2/Call;)Lretrofit2/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    const-string v1, "retrofit"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrofit.call() exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
