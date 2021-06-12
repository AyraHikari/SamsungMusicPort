.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, -0x1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;-><init>(J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;JILjava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->copy(J)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    return-wide v0
.end method

.method public final copy(J)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueueItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
