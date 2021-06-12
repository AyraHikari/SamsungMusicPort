.class final Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;
.super Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayMyMusicQueryArgs"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 3

    .line 348
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 352
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "_id"

    .line 353
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "title"

    .line 354
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album_id"

    .line 355
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "artist"

    .line 356
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "album"

    .line 357
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cp_attrs"

    .line 358
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "source_id"

    .line 361
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "explicit"

    .line 362
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v0, -0xb

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 365
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->uri:Landroid/net/Uri;

    const-string p3, "100"

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->uri:Landroid/net/Uri;

    const-string p2, "audio_id"

    .line 366
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0xe

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    .line 368
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string p3, "100"

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->uri:Landroid/net/Uri;

    .line 371
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;->projection:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JLcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$SearchMyMusicTask$PlayMyMusicQueryArgs;-><init>(Landroid/content/Context;J)V

    return-void
.end method
