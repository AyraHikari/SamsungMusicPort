.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;-><init>(Landroid/content/Context;JLcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 18

    move-object/from16 v1, p0

    .line 63
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;-><init>()V

    .line 64
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getAudioId$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Landroid/content/Context;

    move-result-object v4

    .line 68
    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 67
    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 71
    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getProjection()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 65
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 187
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v4

    check-cast v7, Landroid/database/Cursor;

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 199
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v5, "android.media.metadata.MEDIA_ID"

    .line 77
    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 78
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v7, "_data"

    invoke-static {v5, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getStringOrEmpty(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$setData$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Ljava/lang/String;)V

    const-string v2, "android.media.metadata.TITLE"

    .line 79
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "title"

    iget-object v9, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getData$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v3, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getStringOrUnknown(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v2, "android.media.metadata.ALBUM"

    .line 80
    iget-object v11, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "album"

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v3

    invoke-static/range {v11 .. v17}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrUnknown$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 81
    iget-object v11, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "artist"

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v3

    invoke-static/range {v11 .. v17}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->getStringOrUnknown$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.media.metadata.ARTIST"

    .line 82
    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v5, "com.samsung.android.app.music.metadata.ALBUM_ID"

    .line 83
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v8, "album_id"

    invoke-static {v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getLongOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v5, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v5, "com.samsung.android.app.music.metadata.ARTIST_ID"

    .line 84
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v8, "artist_id"

    invoke-static {v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getLongOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v5, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v5, "android.media.metadata.DURATION"

    .line 85
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v8, "duration"

    invoke-static {v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getLongOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v5, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v5, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 86
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getData$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v5, "android.media.metadata.ALBUM_ARTIST"

    .line 87
    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v2, "android.media.metadata.GENRE"

    .line 88
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v7, "genre"

    invoke-static {v5, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getStringOrNull(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v2, "com.samsung.android.app.music.metadata.SOURCE_ID"

    .line 89
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v7, "source_id"

    invoke-static {v5, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getStringOrNull(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 91
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getListCount$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)I

    move-result v2

    int-to-long v7, v2

    .line 92
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getListPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)I

    move-result v2

    int-to-long v11, v2

    const-string v2, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    .line 93
    invoke-virtual {v0, v2, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v2, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    .line 94
    invoke-virtual {v0, v2, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 95
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->u:Z

    if-eqz v2, :cond_2

    const-string v2, "android.media.metadata.DISC_NUMBER"

    .line 96
    invoke-virtual {v0, v2, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    const-string v2, "android.media.metadata.TRACK_NUMBER"

    const-wide/16 v7, 0x1

    add-long/2addr v11, v7

    .line 97
    invoke-virtual {v0, v2, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    :cond_2
    const-string v2, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    .line 99
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getPlayDirection$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v0, v2, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 101
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v5, "is_secretbox"

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getIntOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    if-ne v2, v10, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    :cond_4
    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    .line 106
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v8, "cp_attrs"

    invoke-static {v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getLongOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v2, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 107
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v2, :cond_5

    .line 108
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v7, "bit_depth"

    invoke-static {v2, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getIntOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 109
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v8, "sampling_rate"

    invoke-static {v7, v3, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getIntOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 110
    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v9, "mime_type"

    invoke-static {v8, v3, v9}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getStringOrNull(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    .line 113
    invoke-static {v7, v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(IILjava/lang/String;)J

    move-result-wide v7

    .line 111
    invoke-virtual {v0, v9, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 116
    :cond_5
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v7, "explicit"

    invoke-static {v2, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getIntOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putExplicitAttribute()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 120
    :cond_7
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v7, "is_celeb"

    invoke-static {v2, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$getIntOrZero(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_8

    const/4 v5, 0x1

    :cond_8
    if-eqz v5, :cond_9

    .line 122
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->putCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;

    .line 124
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v5, :cond_a

    goto :goto_3

    .line 125
    :cond_a
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v5

    .line 126
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;->access$setData$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem;Ljava/lang/String;)V

    :goto_3
    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 124
    :try_start_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/MusicPlayingItem$meta$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    return-object v0
.end method
