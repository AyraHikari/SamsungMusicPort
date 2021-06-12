.class final Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;
.super Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistPartialAlbumCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;II)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->b:I

    const/4 v0, 0x1

    .line 77
    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->c:I

    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 84
    invoke-static {}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRedirectCompleteInternal() redirected-infos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subtitle-infos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iget p1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->a:I

    const/4 v1, 0x0

    const/16 v2, -0x270f

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;III)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "year_name"

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v2, "album"

    .line 98
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "album_id"

    .line 99
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->a(ILjava/lang/Object;)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->a(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/common/info/ArtistTrackCursor$ArtistPartialAlbumCursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->a(ILjava/lang/Object;)V

    .line 112
    :cond_2
    invoke-virtual {p3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    new-instance p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    invoke-direct {p1, v1, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method
