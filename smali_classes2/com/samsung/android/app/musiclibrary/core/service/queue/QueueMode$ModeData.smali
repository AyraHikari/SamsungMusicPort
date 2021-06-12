.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeData"
.end annotation


# static fields
.field private static final BIT_MASK:I = 0xff

.field private static final PART_BITS:I = 0x8

.field private static final REPEAT_PART:I = 0x1

.field private static final SHUFFLE_PART:I = 0x0

.field private static final UNION_PART:I = 0x2

.field private static final UNKNOWN_QUEUE_MODE:I = -0x1


# instance fields
.field private mQueueMode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    return-void
.end method

.method public static create()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;
    .locals 1

    .line 180
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;
    .locals 1

    .line 168
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;-><init>()V

    .line 169
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->setUnion(I)V

    return-object v0
.end method

.method public static create(II)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;
    .locals 1

    .line 161
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;-><init>()V

    .line 162
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->setRepeat(I)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->setShuffle(I)V

    return-object v0
.end method

.method public static create(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;
    .locals 1

    .line 174
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;-><init>()V

    .line 175
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    iput p0, v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    return-object v0
.end method

.method private static get(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x8

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static set(III)I
    .locals 2

    mul-int/lit8 p1, p1, 0x8

    const/16 v0, 0xff

    shl-int v1, v0, p1

    not-int v1, v1

    and-int/2addr p0, v1

    and-int/2addr p2, v0

    shl-int p1, p2, p1

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 200
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getRepeat()I
    .locals 2

    .line 222
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->get(II)I

    move-result v0

    return v0
.end method

.method public getShuffle()I
    .locals 2

    .line 228
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->get(II)I

    move-result v0

    return v0
.end method

.method public getUnion()I
    .locals 2

    .line 234
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->get(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    return v0
.end method

.method public setRepeat(I)V
    .locals 2

    .line 209
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->set(III)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    return-void
.end method

.method public setShuffle(I)V
    .locals 2

    .line 213
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->set(III)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    return-void
.end method

.method public setUnion(I)V
    .locals 2

    .line 217
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->set(III)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode$ModeData;->mQueueMode:I

    return-void
.end method
