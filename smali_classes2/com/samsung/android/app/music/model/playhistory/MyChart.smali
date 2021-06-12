.class public Lcom/samsung/android/app/music/model/playhistory/MyChart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private ranking:I

.field private rate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanking()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChart;->ranking:I

    return v0
.end method

.method public getRate()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChart;->rate:I

    return v0
.end method
