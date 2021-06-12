.class public Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.app.music.THUMBNAIL_URI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver$1;-><init>(Z)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 9

    const-string v0, "album_id"

    const-wide/16 v1, -0x1

    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "cp_attrs"

    const/4 v5, -0x1

    .line 42
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_7

    if-ne v0, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "changed_image_size"

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {v1}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;->a([I)[I

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v1, "changed_dimensions"

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 58
    array-length v1, p1

    if-nez v1, :cond_3

    .line 59
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a()[I

    move-result-object p1

    .line 62
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v1

    if-eqz p2, :cond_4

    const-string v2, " Memory "

    goto :goto_1

    :cond_4
    const-string v2, " Memory&Disk "

    :goto_1
    const-string v5, "SMUSIC-ArtWork"

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalidate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cache for cpAttrs: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " albumId: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    array-length v0, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    aget v5, p1, v2

    const-string v6, "ArtWork"

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalidateCache. dimen - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 75
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v5

    .line 76
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->c()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    goto :goto_3

    .line 78
    :cond_5
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v6

    .line 79
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->c()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    .line 80
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->b()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_4
    const-string p0, "SMUSIC-ArtWork"

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Wrong album id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " or cpAttrs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in uri invalidate broadcast"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
