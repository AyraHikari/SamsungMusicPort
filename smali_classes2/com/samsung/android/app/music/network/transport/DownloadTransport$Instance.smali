.class public Lcom/samsung/android/app/music/network/transport/DownloadTransport$Instance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/transport/DownloadTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/network/transport/DownloadTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/DownloadTransport;
    .locals 2

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/network/transport/DownloadTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/DownloadTransport;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/samsung/android/app/music/network/transport/DownloadTransport$Instance;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/transport/DownloadTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/DownloadTransport;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/app/music/network/transport/DownloadTransport;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/network/transport/DownloadTransport;

    sput-object p0, Lcom/samsung/android/app/music/network/transport/DownloadTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/DownloadTransport;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/network/transport/DownloadTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/DownloadTransport;

    return-object p0
.end method
