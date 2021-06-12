.class public final Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private d:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private f:I

.field private final g:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

.field private final h:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->f:I

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->g:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$4;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->h:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->h:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->d:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p1
.end method

.method private a()V
    .locals 2

    const/4 v0, -0x1

    .line 154
    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->f:I

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->d:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->d:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->release()V

    .line 158
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->d:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    .line 162
    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->g:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->f:I

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->d:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PlayRecommendExecutor"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "PlayRecommendExecutor"

    const-string p2, "execute() - Not support milk feature."

    .line 62
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_0_8"

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "PlayRecommendExecutor"

    const-string p2, "execute() - Need to turn on Mobile data"

    .line 68
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_0_9"

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    :cond_1
    const-string v0, "similarType"

    .line 73
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "PlayRecommendExecutor"

    const-string p2, "execute() - parameter is empty"

    .line 75
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0xf674f2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const v2, 0x9557a40

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "SimilarTrack"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "SimilarArtist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, "PlayRecommendExecutor"

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute() - parameter was wrong ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :pswitch_0
    iput v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->f:I

    goto :goto_1

    .line 80
    :pswitch_1
    iput v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;->f:I

    .line 90
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayRecommendExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
