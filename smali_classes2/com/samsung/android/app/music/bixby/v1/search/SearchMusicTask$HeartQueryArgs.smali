.class final Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartQueryArgs"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6

    .line 250
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v2, "category_id"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "favorite_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartResultAssemblerImpl;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartResultAssemblerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method
