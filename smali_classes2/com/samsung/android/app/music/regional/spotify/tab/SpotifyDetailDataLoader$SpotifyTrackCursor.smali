.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;
.super Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpotifyTrackCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 198
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "disc_number"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "track_is_explicit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "href"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "source_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "preview_url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a:Ljava/util/ArrayList;

    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;",
            ">;Z)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/cursor/ModelCursor;-><init>(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 220
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "track_is_explicit"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "track"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string p2, "title"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string p2, "album"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string p2, "type"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xb

    goto :goto_1

    :sswitch_5
    const-string p2, "href"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_6
    const-string p2, "uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xc

    goto :goto_1

    :sswitch_7
    const-string p2, "_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_8
    const-string p2, "image_url"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xd

    goto :goto_1

    :sswitch_9
    const-string p2, "preview_url"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_1

    :sswitch_a
    const-string p2, "artist"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_b
    const-string p2, "source_id"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_c
    const-string p2, "duration"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_d
    const-string p2, "disc_number"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 246
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 244
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 242
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 240
    :pswitch_4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 238
    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 236
    :pswitch_6
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 234
    :pswitch_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 232
    :pswitch_8
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 230
    :pswitch_9
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 228
    :pswitch_a
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 226
    :pswitch_b
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :pswitch_c
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 222
    :pswitch_d
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->n()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79efb6cd -> :sswitch_d
        -0x76bbb26c -> :sswitch_c
        -0x653bb041 -> :sswitch_b
        -0x53fd20b9 -> :sswitch_a
        -0x4cf14b88 -> :sswitch_9
        -0x34528775 -> :sswitch_8
        0x171ba -> :sswitch_7
        0x1c56c -> :sswitch_6
        0x30ff2b -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x5897e6f -> :sswitch_3
        0x6942258 -> :sswitch_2
        0x697f14b -> :sswitch_1
        0x51ba70b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyTrackCursor;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
