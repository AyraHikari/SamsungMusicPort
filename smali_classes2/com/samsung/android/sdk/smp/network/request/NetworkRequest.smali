.class public abstract Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()I
.end method
