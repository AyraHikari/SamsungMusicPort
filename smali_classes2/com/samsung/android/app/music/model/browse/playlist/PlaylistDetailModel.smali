.class public Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private playlist:Lcom/samsung/android/app/music/model/base/PlayListModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->playlist:Lcom/samsung/android/app/music/model/base/PlayListModel;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
