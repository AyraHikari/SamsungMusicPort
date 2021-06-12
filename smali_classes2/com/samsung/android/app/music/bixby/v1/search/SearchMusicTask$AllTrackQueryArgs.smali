.class final Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AllTrackQueryArgs;
.super Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllTrackQueryArgs"
.end annotation


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 7

    const-string v0, "_id"

    .line 202
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AllTrackQueryArgs;-><init>([Ljava/lang/String;)V

    return-void
.end method
