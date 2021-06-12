.class public final Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "FavoriteExecutor"


# instance fields
.field private b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private d:Z

.field private e:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

.field private final f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;ILjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->e:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    new-instance v2, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;J)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrackAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->e:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
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

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->a:Ljava/lang/String;

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

    const-string v0, "viv.samsungMusicApp.SettingOn"

    .line 47
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getActionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->d:Z

    .line 48
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->e:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 49
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 50
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/FavoriteExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
