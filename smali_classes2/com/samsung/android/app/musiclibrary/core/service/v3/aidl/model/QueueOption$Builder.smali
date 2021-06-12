.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private repeat:I

.field private shuffle:I

.field private shufflePositions:[I

.field private sort:I

.field private sortPositions:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sort:I

    .line 81
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->shufflePositions:[I

    .line 82
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sortPositions:[I

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

.method public static synthetic sort$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
    .locals 1

    .line 90
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;)V

    return-object v0
.end method

.method public final getRepeat()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->repeat:I

    return v0
.end method

.method public final getShuffle()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->shuffle:I

    return v0
.end method

.method public final getShufflePositions()[I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->shufflePositions:[I

    return-object v0
.end method

.method public final getSort()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sort:I

    return v0
.end method

.method public final getSortPositions()[I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sortPositions:[I

    return-object v0
.end method

.method public final setRepeat(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;
    .locals 1

    .line 84
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->repeat:I

    return-object v0
.end method

.method public final setRepeat(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->repeat:I

    return-void
.end method

.method public final setShuffle(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;
    .locals 1

    .line 85
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->shuffle:I

    return-object v0
.end method

.method public final setShuffle(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->shuffle:I

    return-void
.end method

.method public final setShufflePositions([I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;
    .locals 1

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->shufflePositions:[I

    return-object v0
.end method

.method public final setShufflePositions([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->shufflePositions:[I

    return-void
.end method

.method public final setSort(I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;
    .locals 1

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sort:I

    return-object v0
.end method

.method public final setSort(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sort:I

    return-void
.end method

.method public final setSortPositions([I)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;
    .locals 1

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sortPositions:[I

    return-object v0
.end method

.method public final setSortPositions([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->sortPositions:[I

    return-void
.end method
