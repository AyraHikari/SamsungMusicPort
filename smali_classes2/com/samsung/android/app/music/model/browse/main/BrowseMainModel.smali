.class public Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BrowseMainModel"


# instance fields
.field private mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

.field private mPersonalCurationModel:Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;)Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;
    .locals 2

    const-string v0, "BrowseMainModel"

    const-string v1, "create"

    .line 20
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;-><init>()V

    .line 24
    iput-object p0, v0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mPersonalCurationModel:Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    .line 25
    iput-object p1, v0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    return-object v0
.end method


# virtual methods
.method public getGlobalCurationModel()Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    return-object v0
.end method

.method public getPersonalCurationModel()Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mPersonalCurationModel:Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mPersonalCurationModel:Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 41
    iget-object v3, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTopchart()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 42
    iget-object v3, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getNewrelease()Lcom/samsung/android/app/music/model/browse/main/AlbumMenuModel;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 43
    iget-object v3, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getSpotlight()Lcom/samsung/android/app/music/model/browse/main/SpotlightMenuModel;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 44
    iget-object v3, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getTheme()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 45
    iget-object v3, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getHotartist()Lcom/samsung/android/app/music/model/browse/main/PlayListMenuModel;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v0, v3

    .line 46
    iget-object v3, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getGenre()Lcom/samsung/android/app/music/model/browse/main/GenreMenuModel;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 47
    iget-object v3, p0, Lcom/samsung/android/app/music/model/browse/main/BrowseMainModel;->mGlobalCurationModel:Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/browse/main/GlobalCurationModel;->getYear()Lcom/samsung/android/app/music/model/browse/main/YearMenuModel;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
