.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/basic/CheckCountryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/basic/CheckCountryModel;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->c()Ljava/lang/String;

    move-result-object v2

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/MilkTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/MilkTelephonyManager;->d()Ljava/lang/String;

    move-result-object v3

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 376
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a()Ljava/lang/String;

    move-result-object v5

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->a:Landroid/content/Context;

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

    .line 378
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->a:Landroid/content/Context;

    .line 379
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/network/request/basic/BasicApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

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

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$6;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
