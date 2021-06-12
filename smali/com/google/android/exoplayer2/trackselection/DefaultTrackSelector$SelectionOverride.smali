.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1020
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->c:I

    .line 975
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    .line 976
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 999
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1002
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 1003
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 991
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1015
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->b:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
