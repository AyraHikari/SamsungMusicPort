.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$get(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;II)I
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;->get(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$set(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;III)I
    .locals 0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData$Companion;->set(III)I

    move-result p0

    return p0
.end method

.method private final get(II)I
    .locals 0

    mul-int/lit8 p2, p2, 0x8

    ushr-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private final set(III)I
    .locals 2

    mul-int/lit8 p2, p2, 0x8

    const/16 v0, 0xff

    shl-int v1, v0, p2

    not-int v1, v1

    and-int/2addr p1, v1

    and-int/2addr p3, v0

    shl-int p2, p3, p2

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final create()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;
    .locals 2

    .line 190
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final create(II)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;
    .locals 2

    .line 175
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->setRepeat(I)V

    .line 178
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->setShuffle(I)V

    return-object v0
.end method

.method public final create(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;
    .locals 2

    const-string v0, "w"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->access$getQueueMode$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;->access$setQueueMode$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/QueueMode$ModeData;I)V

    return-object v0
.end method
