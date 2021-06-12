.class public Lcom/samsung/android/app/music/model/AlbumTrack;
.super Lcom/samsung/android/app/music/model/SimpleTrack;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/model/SimpleTrack;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/app/music/model/AlbumTrack;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/AlbumTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/model/AlbumTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/AlbumTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/AlbumTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/app/music/model/AlbumTrack;)I
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/AlbumTrack;->getDiscNo()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/AlbumTrack;->getDiscNo()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/AlbumTrack;->getDiscNo()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/AlbumTrack;->getDiscNo()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/AlbumTrack;->getTrackNo()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/AlbumTrack;->getTrackNo()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/samsung/android/app/music/model/AlbumTrack;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/AlbumTrack;->compareTo(Lcom/samsung/android/app/music/model/AlbumTrack;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
