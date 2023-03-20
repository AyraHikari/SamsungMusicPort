.class Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist$1;
.super Ljava/lang/Object;
.source "SearchPlaylist.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;
    .locals 2

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;-><init>(Landroid/os/Parcel;Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist$1;->newArray(I)[Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    move-result-object p1

    return-object p1
.end method
