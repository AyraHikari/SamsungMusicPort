.class public Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/TrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "title"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "album_id"

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "artist"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "is_secretbox"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "drm_type"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "cp_attrs"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "sampling_rate"

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "bit_depth"

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mime_type"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz v1, :cond_1

    .line 51
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_2

    const-string v1, "source_id"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "explicit"

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "is_celeb"

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_a

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 66
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v1, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ne p3, v3, :cond_4

    .line 73
    sget-boolean p3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p3, :cond_3

    const/16 p3, 0xf

    goto :goto_1

    :cond_3
    const p3, 0x10001

    :cond_4
    :goto_1
    const/4 v4, 0x0

    .line 80
    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    long-to-int v1, v1

    const/16 v2, 0x64

    packed-switch v1, :pswitch_data_0

    const-string p5, "audio_id"

    .line 131
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p5, "play_order"

    .line 132
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p5

    new-array p5, p5, [Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 134
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object p5

    iput-object p5, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 135
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    if-ne p4, v3, :cond_9

    .line 138
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/util/ListUtils;->b(Landroid/content/Context;J)I

    move-result p4

    goto/16 :goto_2

    :pswitch_0
    const-string p2, "audio_id"

    .line 83
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "play_order"

    .line 84
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 86
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 87
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    if-ne p4, v3, :cond_5

    .line 89
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a(Landroid/content/Context;)I

    move-result p4

    .line 91
    :cond_5
    invoke-static {p4}, Lcom/samsung/android/app/music/util/ListUtils;->e(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->a()V

    goto/16 :goto_3

    .line 95
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    if-nez p5, :cond_6

    .line 97
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 99
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    invoke-static {p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "most_played"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " != 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    const-string p1, "most_played DESC, title COLLATE LOCALIZED "

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->b()V

    goto/16 :goto_3

    .line 107
    :pswitch_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    if-nez p5, :cond_7

    .line 109
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 111
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    invoke-static {p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "recently_played"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " != 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    const-string p1, "recently_played DESC"

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->c()V

    goto :goto_3

    .line 120
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    if-nez p5, :cond_8

    const-string p5, "900"

    .line 124
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    invoke-static {p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "recently_added_remove_flag"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " != 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    const-string p1, "date_modified DESC"

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->d()V

    goto :goto_3

    .line 140
    :cond_9
    :goto_2
    invoke-static {p4}, Lcom/samsung/android/app/music/util/ListUtils;->e(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    :goto_3
    return-void

    .line 60
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "wrong keyword for query music play list... keyword is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
