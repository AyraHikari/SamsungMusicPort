.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


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
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/basic/CheckCountryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;->b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/basic/CheckCountryModel;)V
    .locals 3

    const-string v0, "StartClientHandler"

    const-string v1, "doCheckCountry - onNext"

    .line 386
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "StartClientHandler"

    const-string v0, "doCheckCountry.onNext. response is null"

    .line 388
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/CheckCountryModel;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StartClientHandler"

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCheckCountry.onNext. result code not success - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/CheckCountryModel;->getResultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.countrycode"

    .line 398
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/CheckCountryModel;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->i(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 383
    check-cast p1, Lcom/samsung/android/app/music/model/basic/CheckCountryModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$5;->a(Lcom/samsung/android/app/music/model/basic/CheckCountryModel;)V

    return-void
.end method
