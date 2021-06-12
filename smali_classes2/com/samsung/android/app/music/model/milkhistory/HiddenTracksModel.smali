.class public Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->trackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 31
    iget-object v1, p0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->trackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;

    .line 32
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackModel;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
