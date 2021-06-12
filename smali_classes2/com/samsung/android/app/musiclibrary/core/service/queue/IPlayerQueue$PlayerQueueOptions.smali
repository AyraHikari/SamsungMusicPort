.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerQueueOptions"
.end annotation


# static fields
.field public static final NO_LIMIT:I = 0x7fffffff


# instance fields
.field final limitQueueSize:I

.field final queueType:I

.field final supportAddedSequence:Z

.field final supportOnline:Z

.field final supportRepeatEndFirst:Z

.field final supportSkippable:Z

.field final supportUnionMode:Z


# direct methods
.method public constructor <init>(IZZIZZZ)V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->queueType:I

    .line 297
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    .line 298
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    .line 299
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    .line 300
    iput-boolean p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportOnline:Z

    .line 301
    iput-boolean p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportAddedSequence:Z

    .line 302
    iput-boolean p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportSkippable:Z

    return-void
.end method


# virtual methods
.method public isSupportOnline()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportOnline:Z

    return v0
.end method
