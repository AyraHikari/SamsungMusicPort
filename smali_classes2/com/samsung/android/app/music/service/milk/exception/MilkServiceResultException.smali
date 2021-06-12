.class public Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mResponse:Ljava/lang/Object;

.field private mRspType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    iput p1, p0, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->mRspType:I

    .line 10
    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->mResponse:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->mResponse:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/app/music/model/ResponseModel;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->mResponse:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response error. rspType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->getRspType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", response - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->getResponse()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public getRspType()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/exception/MilkServiceResultException;->mRspType:I

    return v0
.end method
