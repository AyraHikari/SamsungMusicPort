.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion;

.field private static final Empty:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;


# instance fields
.field private final contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final logger:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final projection:[Ljava/lang/String;

.field private final queueItemProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion;

    .line 253
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion$Empty$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions$Companion$Empty$1;-><init>()V

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const/4 v0, 0x0

    .line 276
    new-array v3, v0, [Ljava/lang/String;

    .line 278
    new-array v4, v0, [Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->Empty:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queueItemProjection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->queueItemProjection:[Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->logger:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 233
    check-cast p4, Landroid/util/SparseArray;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
    .locals 1

    .line 229
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->Empty:Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;ILjava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->queueItemProjection:[Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->logger:Landroid/util/SparseArray;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->copy(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method

.method public final component2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method public final component3()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->queueItemProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->logger:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final copy(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queueItemProjection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;[Ljava/lang/String;[Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 236
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 237
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_5

    .line 239
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v2

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v1

    .line 239
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.v3.ServiceOptions"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method

.method public final getLogger()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->logger:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getProjection()[Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method public final getQueueItemProjection()[Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->queueItemProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceOptions(contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->contents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", projection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->projection:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queueItemProjection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->queueItemProjection:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->logger:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
