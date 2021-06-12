.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/Parcelable;

.field private final c:J

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Parcelable;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 68
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->c:J

    .line 70
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a:Landroid/os/Handler;

    .line 71
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    .line 76
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->b:Landroid/os/Parcelable;

    return-void
.end method

.method static a(Landroid/os/Message;)Landroid/net/Uri;
    .locals 1

    .line 134
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "Uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 136
    check-cast p0, Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/net/Uri;Landroid/os/Message;)V
    .locals 1

    .line 124
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "Uri"

    .line 125
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "User"

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->b:Landroid/os/Parcelable;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private a()Z
    .locals 4

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 2

    if-eqz p2, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/16 v0, 0xc9

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a(Landroid/net/Uri;Landroid/os/Message;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a(Landroid/net/Uri;Landroid/os/Message;)V

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 0

    .line 117
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
