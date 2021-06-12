.class public final Lcom/mz/common/utils/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;,
        Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingInterface;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 51
    new-instance v0, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;)V

    .line 52
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :try_start_0
    new-instance v1, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v0}, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 59
    new-instance v2, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingInterface;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingInterface;->a(Z)Z

    move-result v1

    invoke-direct {v2, v4, v1}, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    throw v1

    .line 65
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
