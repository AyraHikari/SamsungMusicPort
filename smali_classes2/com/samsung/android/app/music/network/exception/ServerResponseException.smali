.class public Lcom/samsung/android/app/music/network/exception/ServerResponseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final resultCode:I

.field private final resultMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultCode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    iput p1, p0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;->resultCode:I

    .line 14
    iput-object p2, p0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;->resultMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/model/base/ServerResponse;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/base/ServerResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/base/ServerResponse;->getResultCode()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/app/music/model/base/ServerResponse;->getResultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;->resultCode:I

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;->resultMessage:Ljava/lang/String;

    return-object v0
.end method
