.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$e;,
        Landroid/support/v4/media/session/MediaSessionCompat$d;,
        Landroid/support/v4/media/session/MediaSessionCompat$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$b;,
        Landroid/support/v4/media/session/MediaSessionCompat$a;,
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat$a;

.field public final b:Landroid/support/v4/media/session/MediaControllerCompat;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->c:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    .line 4
    new-instance p2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {p2, p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 2
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$e;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$e;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 3
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$d;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$b;-><init>(Ljava/lang/Object;)V

    .line 5
    :goto_0
    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$a;)V

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 14

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->b()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()F

    move-result v6

    sub-long v0, v12, v0

    long-to-float v0, v0

    mul-float/2addr v6, v0

    float-to-long v0, v6

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v6

    add-long/2addr v0, v6

    if-eqz p1, :cond_2

    const-string v6, "android.media.metadata.DURATION"

    .line 9
    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->c(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    move-wide v9, v2

    goto :goto_0

    :cond_3
    cmp-long p1, v0, v4

    if-gez p1, :cond_4

    move-wide v9, v4

    goto :goto_0

    :cond_4
    move-wide v9, v0

    .line 11
    :goto_0
    new-instance v7, Landroid/support/v4/media/session/PlaybackStateCompat$d;

    invoke-direct {v7, p0}, Landroid/support/v4/media/session/PlaybackStateCompat$d;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()F

    move-result v11

    invoke-virtual/range {v7 .. v13}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->b(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$d;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static e(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "MediaSessionCompat"

    const-string v1, "Could not unparcel the data."

    .line 3
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$a;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
