.class public Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;->a:Ljava/lang/String;

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

    const/4 v0, 0x1

    return v0
.end method
