.class final Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->c(Landroid/content/Context;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)Lcom/samsung/android/app/music/model/basic/StartClientModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.countrycode"

    .line 409
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getConnectedGeoCountry()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.shopid"

    .line 411
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getShopId()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.channelid"

    .line 413
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getChannelId()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.clearcachedate"

    const/4 v2, 0x0

    .line 415
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a:Landroid/content/Context;

    const-string v2, "com.samsung.radio.clearcachedate"

    .line 418
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getClearCacheDate()Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getClearCacheDate()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a:Landroid/content/Context;

    const-string v1, "should_clear_prefetch_cache"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    check-cast p1, Lcom/samsung/android/app/music/model/basic/StartClientModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$7;->a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)Lcom/samsung/android/app/music/model/basic/StartClientModel;

    move-result-object p1

    return-object p1
.end method
