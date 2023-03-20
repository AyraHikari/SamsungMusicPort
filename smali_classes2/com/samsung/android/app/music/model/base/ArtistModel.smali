.class public Lcom/samsung/android/app/music/model/base/ArtistModel;
.super Ljava/lang/Object;
.source "ArtistModel.java"


# static fields
.field public static final SECTION_MEMBER:Ljava/lang/String; = "01"

.field public static final SECTION_OTHER_ACT:Ljava/lang/String; = "02"

.field public static final SECTION_SIMILAR_ARTISTS:Ljava/lang/String; = "03"

.field private static final VARIOUS_ARTIST_ID:Ljava/lang/String; = "va"


# instance fields
.field public artistId:Ljava/lang/String;

.field public artistImgUrl:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public largeSizeImageUrl:Ljava/lang/String;

.field public section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArtistId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeSizeImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->section:Ljava/lang/String;

    return-object v0
.end method

.method public isVariousArtist()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistId:Ljava/lang/String;

    const-string v1, "va"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/e;->B:Lorg/apache/commons/lang3/builder/e;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/d;->f(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
