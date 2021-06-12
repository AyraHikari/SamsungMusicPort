.class final Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerNameQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComposerNameQueryArgs"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 296
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->b:Landroid/net/Uri;

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "composer"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$GroupNameQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerNameQueryArgs;-><init>()V

    return-void
.end method
