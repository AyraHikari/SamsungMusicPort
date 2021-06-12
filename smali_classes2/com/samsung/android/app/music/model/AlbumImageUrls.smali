.class public Lcom/samsung/android/app/music/model/AlbumImageUrls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/AlbumImageUrls;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORDER_SIZE_DESC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/app/music/model/ImageUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AlbumImageUrls"


# instance fields
.field private albumId:Ljava/lang/String;

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/ImageUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/samsung/android/app/music/model/AlbumImageUrls$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/AlbumImageUrls$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->ORDER_SIZE_DESC:Ljava/util/Comparator;

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/model/AlbumImageUrls$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/AlbumImageUrls$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->albumId:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/model/ImageUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/ImageUrl;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->albumId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findBestLargeUrl(II)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/music/model/AlbumImageUrls;->ORDER_SIZE_DESC:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/ImageUrl;

    .line 97
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/ImageUrl;->getSize()I

    move-result v4

    if-ne v4, p1, :cond_1

    move-object p1, v1

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/ImageUrl;->getSize()I

    move-result v4

    if-le v4, p1, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    move-object p1, v3

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object p1, v1

    move-object v3, p1

    :goto_1
    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "AlbumImageUrls"

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findBestLargeUrl. no matched url. minSize - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", large - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", small - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 119
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ImageUrl;->getSize()I

    move-result v0

    if-lt v0, p2, :cond_6

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/ImageUrl;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/ImageUrl;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/app/music/model/AlbumImageUrls;->urls:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
