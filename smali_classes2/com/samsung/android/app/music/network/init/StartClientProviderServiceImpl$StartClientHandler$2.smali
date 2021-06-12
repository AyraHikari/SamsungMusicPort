.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$StartClientCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$2;->a:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 290
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b()Z

    move-result p1

    .line 291
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->c()Z

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .line 297
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "StartClientHandler"

    const-string v0, "shouldCallCheckCountry. not connected."

    .line 298
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 301
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->b()Z

    move-result p1

    return p1
.end method
