.class public Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

.field private e:J

.field private final f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

.field private g:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

.field private h:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->e:J

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->g:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    .line 236
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$4;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->h:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v2, "Music_27_2"

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;ZZLcom/samsung/android/app/music/bixby/v2/result/PlayResult;Ljava/util/List;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a(ZZLcom/samsung/android/app/music/bixby/v2/result/PlayResult;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;-><init>()V

    .line 122
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 123
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    const/4 v2, 0x1

    .line 126
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;-><init>(ILjava/lang/String;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;)V

    .line 130
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private a(ZZLcom/samsung/android/app/music/bixby/v2/result/PlayResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    .line 164
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Ljava/util/List;)V

    const-string p4, "searchType"

    .line 165
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "disablePlayControl"

    const/4 v0, 0x0

    .line 166
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "trialPlay"

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "transientTime"

    if-eqz p1, :cond_0

    const/16 p1, 0x32

    goto :goto_0

    :cond_0
    const/16 p1, 0x96

    .line 169
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 168
    invoke-virtual {p3, p4, p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "playByRadio"

    .line 170
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->g:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->h:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0
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

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 79
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlayThisArtistExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
