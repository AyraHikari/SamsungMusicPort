.class public Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private economyPlayInfo:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

.field private radioPlayInfo:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getEconomyPlayInfo()Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;->economyPlayInfo:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    return-object v0
.end method

.method public getRadioPlayInfo()Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;->radioPlayInfo:Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    return-object v0
.end method
