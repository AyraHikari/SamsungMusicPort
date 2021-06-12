.class public final Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_STOP_EXPLICIT:J = 0x7530L

.field private static final DELAY_TIME_STOP_IDLE:J = 0x1d4c0L

.field private static final EXPLICIT_STOP_START_ID:I = -0x1

.field private static final LIFE_CYCLE_TAG:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"

.field public static final TIMEOUT_120_SEC_IN_MILLIS:J = 0x1d4c0L

.field public static final TIMEOUT_30_SEC_IN_MILLIS:J = 0x7530L


# instance fields
.field private mIsStopRequested:Z

.field private mLastStartId:I

.field private final mServiceWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;)V
    .locals 1

    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mLastStartId:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mIsStopRequested:Z

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mServiceWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private requestStopServiceInDelayed(JI)V
    .locals 3

    const-string v0, "SMUSIC-SV"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: StopServiceMessageHandler requestMessageDelayed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " startId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mServiceWeakReference:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mIsStopRequested:Z

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    .line 94
    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public clearRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mIsStopRequested:Z

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mIsStopRequested:Z

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mServiceWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;->onDelayedStopService(I)V

    return-void
.end method

.method public requestStopService()V
    .locals 3

    .line 65
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mLastStartId:I

    const-wide/16 v1, 0x7530

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopServiceInDelayed(JI)V

    return-void
.end method

.method public requestStopService(I)V
    .locals 2

    .line 56
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mLastStartId:I

    const-wide/16 v0, 0x7530

    .line 57
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopServiceInDelayed(JI)V

    return-void
.end method

.method public requestStopServiceInIdle()V
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mIsStopRequested:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SV"

    const-string v1, "LifeCycle: StopServiceMessageHandler requestStopServiceInIdle but already requested before"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/32 v0, 0x1d4c0

    .line 78
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->mLastStartId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopServiceInDelayed(JI)V

    return-void
.end method
