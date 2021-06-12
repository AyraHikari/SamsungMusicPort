.class public Lcom/samsung/android/app/music/model/Album;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/Album;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FORMAT:Ljava/lang/String; = "yyyy.MM.dd"

.field private static final LOG_TAG:Ljava/lang/String; = "Album"


# instance fields
.field agency:Ljava/lang/String;

.field albumId:Ljava/lang/String;

.field albumTitle:Ljava/lang/String;

.field artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field category:Ljava/lang/String;

.field clkImageUrl:Ljava/lang/String;

.field description:Ljava/lang/String;

.field distributor:Ljava/lang/String;

.field favoriteYn:Ljava/lang/String;

.field genre:Ljava/lang/String;

.field imageUrl:Ljava/lang/String;

.field private mVirtualAlbumId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field moreYn:Ljava/lang/String;

.field releaseDate:Ljava/lang/String;

.field trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/AlbumTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 294
    new-instance v0, Lcom/samsung/android/app/music/model/Album$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Album$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Album;->mVirtualAlbumId:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Album;->mVirtualAlbumId:J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->albumTitle:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->imageUrl:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->clkImageUrl:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->releaseDate:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->genre:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->distributor:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->description:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->favoriteYn:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->category:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->moreYn:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->agency:Ljava/lang/String;

    .line 290
    sget-object v0, Lcom/samsung/android/app/music/model/AlbumTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Album;->trackList:Ljava/util/List;

    .line 291
    sget-object v0, Lcom/samsung/android/app/music/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Album;->mVirtualAlbumId:J

    .line 270
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Album;->albumTitle:Ljava/lang/String;

    .line 271
    iput-object p3, p0, Lcom/samsung/android/app/music/model/Album;->imageUrl:Ljava/lang/String;

    .line 272
    iput-object p4, p0, Lcom/samsung/android/app/music/model/Album;->category:Ljava/lang/String;

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    .line 274
    iget-object p1, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    new-instance p3, Lcom/samsung/android/app/music/model/artist/Artist;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p2}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/model/artist/Artist;)Lcom/samsung/android/app/music/model/Album;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/model/Album;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Album;-><init>()V

    .line 59
    iput-object p0, v0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    .line 60
    iput-object p1, v0, Lcom/samsung/android/app/music/model/Album;->albumTitle:Ljava/lang/String;

    .line 61
    iput-object p2, v0, Lcom/samsung/android/app/music/model/Album;->imageUrl:Ljava/lang/String;

    .line 62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    .line 63
    iget-object p0, v0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static from(Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;)Lcom/samsung/android/app/music/model/Album;
    .locals 5

    .line 307
    new-instance v0, Lcom/samsung/android/app/music/model/Album;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Album;-><init>()V

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getContentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/Album;->albumTitle:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/Album;->imageUrl:Ljava/lang/String;

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getArtistList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;

    .line 314
    iget-object v2, v0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;->getArtistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private generateUnsignedHash(Ljava/lang/String;)J
    .locals 4

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public convertArtistNameListToArray()[Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAgency()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->agency:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistSize()I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getClkImageUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->clkImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayArtistsName()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->convertArtistNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistributor()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->distributor:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "yyyy.MM.dd"

    :cond_0
    const/4 v1, 0x0

    .line 114
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 122
    :cond_1
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v1
.end method

.method public getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/AlbumTrack;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualAlbumId()J
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Album;->mVirtualAlbumId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/model/Album;->generateUnsignedHash(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Album;->mVirtualAlbumId:J

    .line 76
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Album;->mVirtualAlbumId:J

    return-wide v0
.end method

.method public hasAvailableArtist()Z
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->getArtistSize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->isVariousArtist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClickableCoverArt()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->getClkImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasMore()Z
    .locals 2

    const-string v0, "Y"

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/music/model/Album;->moreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 2

    const-string v0, "Y"

    .line 228
    iget-object v1, p0, Lcom/samsung/android/app/music/model/Album;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Album;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVariousArtist()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/artist/Artist;->isVariousArtist()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Album;->favoriteYn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Album;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fav - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Album;->favoriteYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", genre - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Album;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[artist - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \n[track - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Album;->getTrackList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 249
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->clkImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->genre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->distributor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->favoriteYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->moreYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->agency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->trackList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 262
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Album;->artistList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
