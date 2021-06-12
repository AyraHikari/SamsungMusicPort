.class final Lcom/samsung/android/app/music/model/AlbumImageUrls$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/AlbumImageUrls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/model/AlbumImageUrls;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/AlbumImageUrls;
    .locals 1

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/model/AlbumImageUrls;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/model/AlbumImageUrls;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/AlbumImageUrls$2;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/AlbumImageUrls;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/model/AlbumImageUrls;
    .locals 0

    .line 36
    new-array p1, p1, [Lcom/samsung/android/app/music/model/AlbumImageUrls;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/AlbumImageUrls$2;->newArray(I)[Lcom/samsung/android/app/music/model/AlbumImageUrls;

    move-result-object p1

    return-object p1
.end method
