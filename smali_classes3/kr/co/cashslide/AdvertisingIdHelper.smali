.class Lkr/co/cashslide/AdvertisingIdHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CashslideSDK"

.field private static adId:Ljava/lang/String;

.field private static hasAdvertisingId:Z

.field private static isLimitAdTrackingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdId()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lkr/co/cashslide/AdvertisingIdHelper;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public static hasAdvertisingId()Z
    .locals 1

    .line 49
    sget-boolean v0, Lkr/co/cashslide/AdvertisingIdHelper;->hasAdvertisingId:Z

    return v0
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .line 57
    sget-boolean v0, Lkr/co/cashslide/AdvertisingIdHelper;->isLimitAdTrackingEnabled:Z

    return v0
.end method

.method private static setAdInfo(Ljava/lang/String;Z)V
    .locals 1

    .line 67
    sget-object v0, Lkr/co/cashslide/AdvertisingIdHelper;->adId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lkr/co/cashslide/AdvertisingIdHelper;->adId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lkr/co/cashslide/AdvertisingIdHelper;->isLimitAdTrackingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 71
    :cond_0
    sput-object p0, Lkr/co/cashslide/AdvertisingIdHelper;->adId:Ljava/lang/String;

    .line 72
    sput-boolean p1, Lkr/co/cashslide/AdvertisingIdHelper;->isLimitAdTrackingEnabled:Z

    const/4 p0, 0x1

    .line 73
    sput-boolean p0, Lkr/co/cashslide/AdvertisingIdHelper;->hasAdvertisingId:Z

    return-void
.end method

.method public static updateAdId(Landroid/content/Context;)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkr/co/cashslide/AdvertisingIdHelper$1;

    invoke-direct {v1, p0}, Lkr/co/cashslide/AdvertisingIdHelper$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static updateAdIdSynchronized(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string p0, "CashslideSDK"

    const-string v0, "cannot update advertising id from main thread!"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result p0

    invoke-static {v0, p0}, Lkr/co/cashslide/AdvertisingIdHelper;->setAdInfo(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CashslideSDK"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play Services not available - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "CashslideSDK"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play Services not available - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v0, "CashslideSDK"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play Services not available - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p0

    const-string v0, "CashslideSDK"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play Services not available - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
