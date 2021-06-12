.class public Lcom/samsung/android/app/music/model/basic/NoticeModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private noticeId:Ljava/lang/String;

.field private noticeStartDate:Ljava/lang/String;

.field private noticeTitle:Ljava/lang/String;

.field private noticeUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoticeId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/NoticeModel;->noticeId:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeStartDate()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/NoticeModel;->noticeStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/NoticeModel;->noticeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/NoticeModel;->noticeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
