.class public Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private offer:I

.field private playCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffer()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->offer:I

    return v0
.end method

.method public getPlayCnt()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->playCnt:I

    return v0
.end method

.method public resetPlayCnt()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;->playCnt:I

    return-void
.end method
