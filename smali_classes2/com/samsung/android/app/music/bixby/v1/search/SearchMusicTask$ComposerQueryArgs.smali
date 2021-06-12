.class final Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerQueryArgs;
.super Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComposerQueryArgs"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "_id"

    const-string v1, "composer"

    .line 242
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "composer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;

    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerNameQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerNameQueryArgs;-><init>(Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    invoke-direct {v6, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method
