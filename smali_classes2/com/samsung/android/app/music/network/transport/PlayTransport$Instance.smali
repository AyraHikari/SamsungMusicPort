.class public Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/transport/PlayTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/network/transport/PlayTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/PlayTransport;
    .locals 2

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/PlayTransport;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/PlayTransport;

    if-nez v1, :cond_0

    .line 44
    const-class v1, Lcom/samsung/android/app/music/network/transport/PlayTransport;

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/network/transport/PlayTransport;

    sput-object p0, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/PlayTransport;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 48
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/PlayTransport;

    return-object p0
.end method
