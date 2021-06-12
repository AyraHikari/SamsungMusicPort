.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueContentObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final UPDATE_THROTTLE:I = 0x7d0


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsSelfChange:Z

.field private mLastLoadCompleteTime:J

.field private mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

.field private final mUpdateNotifier:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 117
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, -0x2710

    .line 104
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mLastLoadCompleteTime:J

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mWaiting:Z

    .line 142
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mUpdateNotifier:Ljava/lang/Runnable;

    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mLastLoadCompleteTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;J)J
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mLastLoadCompleteTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mIsSelfChange:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;)Landroid/net/Uri;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mWaiting:Z

    return p1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "SV-List"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange ! now : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Uri :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mLastLoadCompleteTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 131
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mWaiting:Z

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mUpdateNotifier:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mLastLoadCompleteTime:J

    add-long/2addr v0, v4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mWaiting:Z

    :cond_0
    return-void

    .line 137
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mIsSelfChange:Z

    .line 138
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mUri:Landroid/net/Uri;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mUpdateNotifier:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setContentChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    return-void
.end method
