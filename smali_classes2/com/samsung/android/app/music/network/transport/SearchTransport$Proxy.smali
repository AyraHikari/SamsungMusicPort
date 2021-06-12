.class public Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/transport/SearchTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/network/transport/SearchTransport;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;
    .locals 2

    .line 39
    sget-object v0, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a:Lcom/samsung/android/app/music/network/transport/SearchTransport;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/samsung/android/app/music/network/transport/SearchTransport;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a:Lcom/samsung/android/app/music/network/transport/SearchTransport;

    if-nez v1, :cond_0

    .line 42
    const-class v1, Lcom/samsung/android/app/music/network/transport/SearchTransport;

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/network/transport/SearchTransport;

    sput-object p0, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a:Lcom/samsung/android/app/music/network/transport/SearchTransport;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a:Lcom/samsung/android/app/music/network/transport/SearchTransport;

    return-object p0
.end method
