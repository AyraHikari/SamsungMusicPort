.class public Lcom/samsung/android/app/music/model/base/LyricModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lyricsUrl:Ljava/lang/String;

.field private synclyricsUrl:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/LyricModel;->synclyricsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/LyricModel;->synclyricsUrl:Ljava/lang/String;

    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/LyricModel;->lyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricsUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/LyricModel;->lyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSynclyricsUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/LyricModel;->synclyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/LyricModel;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
