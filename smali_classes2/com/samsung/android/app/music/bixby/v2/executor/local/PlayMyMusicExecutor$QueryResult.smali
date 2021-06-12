.class final Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryResult"
.end annotation


# instance fields
.field private a:J

.field private b:[J

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->d:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;J)J
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;[J)[J
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->b:[J

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->d:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)[J
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->b:[J

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$QueryResult;->a:J

    return-wide v0
.end method
