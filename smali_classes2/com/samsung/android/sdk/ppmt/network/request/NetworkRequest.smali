.class public abstract Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation
.end method

.method public abstract c()I
.end method
