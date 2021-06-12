.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion;


# instance fields
.field private b:Z

.field private c:Landroid/util/SparseBooleanArray;

.field private d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion;

    .line 842
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    .line 812
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->b:Z

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->c:Landroid/util/SparseBooleanArray;

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-lez p2, :cond_2

    .line 817
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    :goto_1
    if-ge v0, p2, :cond_2

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 821
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 824
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->e:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 799
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "superState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 806
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->e:J

    return-void
.end method

.method public final a(Landroid/util/LongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 804
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    return-void
.end method

.method public final a(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->c:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 800
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->b:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->b:Z

    return v0
.end method

.method public final b()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->c:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public final c()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 806
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->e:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 829
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->b:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 830
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 831
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 832
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-ge v0, p2, :cond_4

    .line 834
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 835
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->d:Landroid/util/LongSparseArray;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "checkIdState!!.valueAt(i)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    :cond_4
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
