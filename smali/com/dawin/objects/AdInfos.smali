.class public Lcom/dawin/objects/AdInfos;
.super Ljava/lang/Object;


# instance fields
.field private mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

.field private mExtensionInfo:Lcom/dawin/http/parser/ExtensionInfoParser;

.field private mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

.field private mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;


# direct methods
.method public constructor <init>(Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;Lcom/dawin/http/parser/MediaFileInfoParser;Lcom/dawin/http/parser/ExtensionInfoParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iput-object p2, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iput-object p3, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    iput-object p4, p0, Lcom/dawin/objects/AdInfos;->mExtensionInfo:Lcom/dawin/http/parser/ExtensionInfoParser;

    return-void
.end method


# virtual methods
.method public getAdDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mAdDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTag:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTime()I
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget v0, v0, Lcom/dawin/http/parser/TrackingInfoParser;->mChargeTime:I

    return v0
.end method

.method public getEndTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/TrackingInfoParser;->mEndTag:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mErrorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mExtensionInfo:Lcom/dawin/http/parser/ExtensionInfoParser;

    return-object v0
.end method

.method public getImpressionTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mImpression:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/MediaFileInfoParser;->mMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQuarterTag(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, ""

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, p1, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarterTag:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, p1, Lcom/dawin/http/parser/TrackingInfoParser;->mHalfTag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, p1, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarter3Tag:Ljava/lang/String;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getQuarterTime(I)I
    .locals 2

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget v1, p1, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarterTime:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget v1, p1, Lcom/dawin/http/parser/TrackingInfoParser;->mHalfTime:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget v1, p1, Lcom/dawin/http/parser/TrackingInfoParser;->mQuarter3Time:I

    :cond_3
    :goto_0
    return v1
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/TrackingInfoParser;->mSkipTag:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/TrackingInfoParser;->mStartTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoClickTracking()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mVideoClickTracking:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoclickThrough()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mVideoClickThrough:Ljava/lang/String;

    return-object v0
.end method

.method public isParsingProblemOccured()Z
    .locals 3

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, v0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mBasicInfo:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/BasicInfoParser;->isParsingProblemOccured()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mTrackingInfo:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser;->isParsingProblemOccured()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dawin/objects/AdInfos;->mMediaFileInfo:Lcom/dawin/http/parser/MediaFileInfoParser;

    invoke-virtual {v0}, Lcom/dawin/http/parser/MediaFileInfoParser;->isParsingProblemOccured()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method
