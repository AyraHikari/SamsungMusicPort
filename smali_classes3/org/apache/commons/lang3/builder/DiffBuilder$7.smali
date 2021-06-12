.class Lorg/apache/commons/lang3/builder/DiffBuilder$7;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:D

.field final synthetic val$rhs:D


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;DD)V
    .locals 0

    .line 429
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$7;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-wide p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$7;->val$lhs:D

    iput-wide p5, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$7;->val$rhs:D

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Double;
    .locals 2

    .line 434
    iget-wide v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$7;->val$lhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$7;->getLeft()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Double;
    .locals 2

    .line 439
    iget-wide v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$7;->val$rhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$7;->getRight()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
