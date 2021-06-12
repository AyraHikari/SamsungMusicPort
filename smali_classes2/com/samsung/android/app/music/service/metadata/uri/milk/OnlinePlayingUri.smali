.class public final Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Z

.field private final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

.field private h:Landroid/net/Uri;

.field private i:I

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->j:Z

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 104
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a:Landroid/os/Bundle;

    goto :goto_0

    .line 106
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a:Landroid/os/Bundle;

    .line 108
    :goto_0
    iput-object p4, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->d:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->f:Ljava/lang/String;

    .line 110
    iput-boolean p6, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->e:Z

    return-void
.end method

.method public static a(Landroid/net/Uri;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "type"

    .line 310
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, -0x1

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x42

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "M"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const-string v2, "L"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_2
    return v4

    :pswitch_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static a(I)J
    .locals 2

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x14

    .line 338
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    const/16 p0, 0x28

    .line 333
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    const/16 p0, 0x1e

    .line 335
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->g:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->e:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;
    .locals 8

    .line 86
    new-instance v7, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;J)V
    .locals 14

    move-object v0, p0

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a()Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 148
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 151
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 152
    invoke-static {v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 156
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a(Landroid/net/Uri;)I

    move-result v4

    .line 157
    iget-object v5, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v4, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->buildStreamingId(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c()J

    move-result-wide v4

    move-wide/from16 v8, p3

    invoke-static {v3, v4, v5, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->obtain(ZJJ)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    move-result-object v13

    const-wide/16 v3, 0x0

    .line 168
    new-instance v8, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$1;

    invoke-direct {v8, p0, v1, v3, v4}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$1;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;Ljava/lang/String;J)V

    const/4 v11, 0x2

    .line 178
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v9, 0x0

    .line 168
    invoke-static/range {v7 .. v13}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object v1

    .line 179
    invoke-static {p1}, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->requestCacheOnly(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    return-void
.end method

.method private b(I)Landroid/net/Uri;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 189
    iget-boolean v2, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->j:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 192
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->h:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 193
    iget v2, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->i:I

    if-ne v1, v2, :cond_1

    .line 194
    iget-object v1, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->h:Landroid/net/Uri;

    return-object v1

    .line 200
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->g:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    if-nez v2, :cond_2

    .line 201
    new-instance v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    iget-object v4, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->g:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    .line 205
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->f:Ljava/lang/String;

    const/4 v4, -0x1

    if-nez v2, :cond_3

    .line 206
    iget-object v2, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->g:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    iget-object v5, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->d:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->e:Z

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;

    move-result-object v2

    goto :goto_0

    .line 208
    :cond_3
    new-instance v2, Lcom/samsung/android/app/music/model/Track;

    invoke-direct {v2}, Lcom/samsung/android/app/music/model/Track;-><init>()V

    .line 209
    iget-object v5, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    .line 210
    new-instance v5, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;

    invoke-direct {v5, v4, v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;-><init>(ILcom/samsung/android/app/music/model/Track;)V

    move-object v2, v5

    .line 212
    :goto_0
    iget-boolean v5, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->j:Z

    if-eqz v5, :cond_4

    return-object v3

    .line 215
    :cond_4
    iget v5, v2, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->a:I

    const-string v6, "SV-Player"

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMilkPlayingUri resultType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "result_type"

    .line 218
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "player_extra_content_time_stamp"

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 219
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 221
    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c(I)V

    .line 222
    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->d(I)I

    move-result v5

    if-ge v5, v4, :cond_5

    const-string v1, "streaming_server_error"

    .line 225
    invoke-static {v1, v5}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->a(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 228
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v1, "streaming_server_error"

    const/16 v2, -0xe

    .line 231
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->a(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 233
    :cond_6
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 234
    invoke-static {v5}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a(Landroid/net/Uri;)I

    move-result v7

    .line 235
    invoke-static {v5}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b(Landroid/net/Uri;)Z

    move-result v8

    .line 236
    iget-object v9, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v9, v7, v8, v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->buildStreamingId(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v9, 0x0

    .line 244
    new-instance v12, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;

    invoke-direct {v12, v0, v4, v9, v10}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;Ljava/lang/String;J)V

    const/4 v15, 0x2

    .line 254
    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x0

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->c()J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;->obtain(ZJ)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;

    move-result-object v17

    const-wide/16 v13, 0x0

    .line 244
    invoke-static/range {v11 .. v17}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;

    move-result-object v4

    .line 256
    iput v1, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->i:I

    .line 257
    iget-object v5, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/streaming/MediaProxyServerFactory;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    move-result-object v5

    .line 258
    iget-boolean v9, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->j:Z

    if-eqz v9, :cond_7

    return-object v3

    :cond_7
    const-string v3, "is_preview_song"

    xor-int/lit8 v8, v8, 0x1

    .line 261
    invoke-virtual {v6, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v3, "settlement_ext"

    .line 264
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_8
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;

    invoke-direct {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;-><init>(Landroid/os/Bundle;)V

    .line 267
    invoke-static {v7}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;->setQuality(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;

    .line 268
    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->h:Landroid/net/Uri;

    return-object v1
.end method

.method private b()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a:Landroid/os/Bundle;

    const-string v1, "player_extra_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a:Landroid/os/Bundle;

    const-string v2, "player_extra_content"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;
    .locals 8

    .line 91
    new-instance v7, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public static b(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "s"

    .line 327
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c()J
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerSettingManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getStreamingCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;
    .locals 8

    .line 96
    new-instance v7, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method private c(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "updateDate"

    .line 272
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x138b

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b:Landroid/content/Context;

    .line 293
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkMessageUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "player_extra_message_time_stamp"

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 294
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a:Landroid/os/Bundle;

    const-string v1, "player_extra_message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private d(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, -0x1

    return p1

    :sswitch_0
    const/16 p1, -0x21

    return p1

    :sswitch_1
    const/16 p1, -0xf

    return p1

    :sswitch_2
    const/16 p1, -0x14

    return p1

    :sswitch_3
    const/16 p1, -0x23

    return p1

    :sswitch_4
    const/16 p1, -0x12

    return p1

    :sswitch_5
    const/16 p1, -0x22

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x1389 -> :sswitch_4
        0x138a -> :sswitch_3
        0x138b -> :sswitch_2
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_1
        0x2715 -> :sswitch_1
        0x2716 -> :sswitch_1
        0x2717 -> :sswitch_1
        0x32c8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->reset()V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->j:Z

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public makeCache(J)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a(Landroid/content/Context;Landroid/os/Bundle;J)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->h:Landroid/net/Uri;

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->i:I

    return-void
.end method
