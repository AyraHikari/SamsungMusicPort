.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/ObservableSource;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c()Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d()Ljava/lang/String;

    move-result-object v3

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->a:Landroid/content/Context;

    .line 276
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 277
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a()Ljava/lang/String;

    move-result-object v9

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_1
    const-string v0, "0"

    goto :goto_2

    .line 279
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;

    iget-object v1, v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1;->a:Landroid/content/Context;

    const-string v4, ""

    const-string v7, ""

    const-string v8, ""

    .line 280
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/music/network/request/basic/BasicApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$1$1;->a()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
