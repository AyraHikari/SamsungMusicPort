.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;

.field private static final Empty$delegate:Lkotlin/Lazy;


# instance fields
.field private final repeat:I

.field private final shuffle:I

.field private final shufflePositions:[I

.field private final sort:I

.field private final sortPositions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->CREATOR:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR;

    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR$Empty$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$CREATOR$Empty$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->Empty$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->repeat:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shuffle:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sort:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    const-string v1, "parcel.createIntArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shufflePositions:[I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    const-string v0, "parcel.createIntArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sortPositions:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getRepeat()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->repeat:I

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getShuffle()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shuffle:I

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getSort()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sort:I

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getShufflePositions()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shufflePositions:[I

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;->getSortPositions()[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sortPositions:[I

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lkotlin/Lazy;
    .locals 1

    .line 11
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->Empty$delegate:Lkotlin/Lazy;

    return-object v0
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
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getRepeat()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->repeat:I

    return v0
.end method

.method public final getShuffle()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shuffle:I

    return v0
.end method

.method public final getShufflePositions()[I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shufflePositions:[I

    return-object v0
.end method

.method public final getSort()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sort:I

    return v0
.end method

.method public final getSortPositions()[I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sortPositions:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repeat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->repeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shuffle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shuffle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shuffle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shufflePositions:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shufflePositions:[I

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOptionKt;->access$toLog([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sort:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortPositions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sortPositions:[I

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOptionKt;->access$toLog([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->repeat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shuffle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->shufflePositions:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->sortPositions:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
