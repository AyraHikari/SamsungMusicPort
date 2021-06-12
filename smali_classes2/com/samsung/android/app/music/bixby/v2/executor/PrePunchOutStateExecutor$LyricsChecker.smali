.class final Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LyricsChecker"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PrePunchOutStateExecutor$LyricsChecker"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private final c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

.field private final e:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 151
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->e:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    .line 125
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 126
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->b()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->e:Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method
