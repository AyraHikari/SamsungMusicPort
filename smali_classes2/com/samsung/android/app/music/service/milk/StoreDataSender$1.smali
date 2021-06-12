.class public final Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;
.super Lcom/samsung/android/app/music/milk/SimpleSingleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/StoreDataSender;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSingleSubscriber<",
        "Lcom/samsung/android/app/music/model/basic/StoreDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/StoreDataSender;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/basic/StoreDataModel;)V
    .locals 3

    const-string v0, "storeDataModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b:Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Lcom/samsung/android/app/music/model/basic/StoreDataModel;)V

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.radio.dormancycount"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getDormancyCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.music.KEY_SHOP_AGE_LIMIT"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getShopAgeLimit()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.radio.KEY_AD_AUDIO_PATTERN"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getAdInterval()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;->a:Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.radio.KEY_PRE_AUDIO_AD_INTERVAL"

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    move-result-object p1

    const-string v2, "storeDataModel.configs"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->getPreAudioAdIntervalTime()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    .line 26
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/app/music/model/basic/StoreDataModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/StoreDataSender$1;->a(Lcom/samsung/android/app/music/model/basic/StoreDataModel;)V

    return-void
.end method
