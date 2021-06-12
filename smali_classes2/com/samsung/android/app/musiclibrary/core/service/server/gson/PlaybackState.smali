.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final duration:J

.field private final id:Ljava/lang/String;

.field private final playState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "play_state"
    .end annotation
.end field

.field private final position:J


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;-><init>(Ljava/lang/String;IJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    iput-wide p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const/4 p2, 0x0

    const/4 p8, 0x0

    goto :goto_0

    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_2

    move-wide v2, v0

    goto :goto_1

    :cond_2
    move-wide v2, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, p5

    :goto_2
    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-wide p5, v2

    move-wide p7, v0

    .line 23
    invoke-direct/range {p2 .. p8}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;-><init>(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;Ljava/lang/String;IJJILjava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-wide p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    :cond_3
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-wide p5, v0

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->copy(Ljava/lang/String;IJJ)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;IJJ)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;-><init>(Ljava/lang/String;IJJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayState()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    return v0
.end method

.method public final getPosition()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackState(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->playState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
