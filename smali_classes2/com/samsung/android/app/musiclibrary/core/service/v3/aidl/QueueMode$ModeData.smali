.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;
    }
.end annotation


# static fields
.field private static final BIT_MASK:I = 0xff

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;

.field private static final PART_BITS:I = 0x8

.field private static final REPEAT_PART:I = 0x1

.field private static final SHUFFLE_PART:I = 0x0

.field private static final UNKNOWN_QUEUE_MODE:I = -0x1


# instance fields
.field private queueMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;-><init>()V

    return-void
.end method

.method public static final synthetic access$getQueueMode$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    return p0
.end method

.method public static final synthetic access$setQueueMode$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    return-void
.end method

.method public static synthetic repeat$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic shuffle$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 160
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getRepeat()I
    .locals 3

    .line 131
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;

    .line 132
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    const/4 v2, 0x1

    .line 131
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;->access$get(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;II)I

    move-result v0

    return v0
.end method

.method public final getShuffle()I
    .locals 3

    .line 146
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;

    .line 147
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    const/4 v2, 0x0

    .line 146
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;->access$get(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    return v0
.end method

.method public final setRepeat(I)V
    .locals 3

    .line 137
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;

    .line 138
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    const/4 v2, 0x1

    .line 137
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;->access$set(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;III)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    return-void
.end method

.method public final setShuffle(I)V
    .locals 3

    .line 152
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;

    .line 153
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    const/4 v2, 0x0

    .line 152
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;->access$set(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;III)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->queueMode:I

    return-void
.end method
