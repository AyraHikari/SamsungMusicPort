.class public final Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveToRequest"
.end annotation


# instance fields
.field public final direction:I

.field public final ignoreRepeatMode:Z

.field public final isGapLessPlaying:Z

.field public final success:Z


# direct methods
.method public constructor <init>(ZIZZ)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->success:Z

    .line 237
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->direction:I

    .line 238
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->ignoreRepeatMode:Z

    .line 239
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;->isGapLessPlaying:Z

    return-void
.end method
