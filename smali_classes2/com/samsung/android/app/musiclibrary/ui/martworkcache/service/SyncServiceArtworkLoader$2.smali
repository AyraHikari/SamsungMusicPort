.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    .line 122
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 p1, 0x0

    .line 129
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    return-void
.end method
