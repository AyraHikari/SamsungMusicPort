.class final Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ArtistQueryArgs;
.super Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistQueryArgs"
.end annotation


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 8

    const-string v0, "_id"

    const-string v1, "artist_id"

    .line 218
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "artist"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupIdResultAssemblerImpl;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupIdResultAssemblerImpl;-><init>()V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ArtistQueryArgs;-><init>([Ljava/lang/String;)V

    return-void
.end method
