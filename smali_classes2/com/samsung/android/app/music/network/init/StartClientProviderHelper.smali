.class public Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/network/init/StartClientProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/init/StartClientProvider;
    .locals 3

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    if-nez v0, :cond_2

    .line 21
    const-class v0, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    if-nez v1, :cond_1

    .line 23
    invoke-static {}, Lcom/samsung/android/app/music/MusicApplication;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.music:dataService"

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderClientImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    .line 31
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 33
    :cond_2
    :goto_1
    sget-object p0, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    return-object p0
.end method
