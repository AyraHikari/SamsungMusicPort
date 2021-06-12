.class public Lcom/samsung/android/app/music/model/base/ArtistModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SECTION_MEMBER:Ljava/lang/String; = "01"

.field public static final SECTION_OTHER_ACT:Ljava/lang/String; = "02"

.field public static final SECTION_SIMILAR_ARTISTS:Ljava/lang/String; = "03"

.field private static final VARIOUS_ARTIST_ID:Ljava/lang/String; = "va"


# instance fields
.field protected artistId:Ljava/lang/String;

.field protected artistImgUrl:Ljava/lang/String;

.field protected artistName:Ljava/lang/String;

.field protected imageUrl:Ljava/lang/String;

.field protected largeSizeImageUrl:Ljava/lang/String;

.field protected section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistImgUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeSizeImageUrl()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->section:Ljava/lang/String;

    return-object v0
.end method

.method public isVariousArtist()Z
    .locals 2

    const-string v0, "va"

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/ArtistModel;->artistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
