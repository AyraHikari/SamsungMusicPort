.class public Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private banner:Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;

.field private genre:Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

.field private hotartist:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

.field private newrelease:Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

.field private spotlight:Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

.field private theme:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

.field private tip:Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;

.field private topchart:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

.field private year:Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner()Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->banner:Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;

    return-object v0
.end method

.method public getGenre()Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->genre:Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    return-object v0
.end method

.method public getHotartist()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->hotartist:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    return-object v0
.end method

.method public getNewrelease()Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->newrelease:Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    return-object v0
.end method

.method public getSpotlight()Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->spotlight:Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    return-object v0
.end method

.method public getTheme()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->theme:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    return-object v0
.end method

.method public getTip()Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->tip:Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;

    return-object v0
.end method

.method public getTopchart()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->topchart:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    return-object v0
.end method

.method public getYear()Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->year:Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    return-object v0
.end method

.method public setGenre(Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->genre:Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    return-void
.end method

.method public setHotartist(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->hotartist:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    return-void
.end method

.method public setNewrelease(Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->newrelease:Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    return-void
.end method

.method public setSpotlight(Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->spotlight:Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    return-void
.end method

.method public setTheme(Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->theme:Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    return-void
.end method

.method public setTip(Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->tip:Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;

    return-void
.end method

.method public setYear(Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->year:Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
