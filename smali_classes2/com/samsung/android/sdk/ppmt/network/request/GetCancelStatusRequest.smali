.class public Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.peppermint.samsung.com/v2/app/marketing/status/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
