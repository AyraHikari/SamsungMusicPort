.class Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TracksQueryArgs"
.end annotation


# direct methods
.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;)V
    .locals 6

    .line 190
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;)V

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 193
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;->LOCAL_TRACK_SELECTION:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;->LOCAL_TRACK_SELECTION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;->selection:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;)V

    return-void
.end method
