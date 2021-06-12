.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/zxing/Result;->b:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/zxing/Result;->a:Ljava/lang/String;

    return-object v0
.end method
