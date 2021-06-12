.class Lorg/apache/commons/lang3/builder/DiffBuilder$10;
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
        "[",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[F

.field final synthetic val$rhs:[F


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[F[F)V
    .locals 0

    .line 555
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$10;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$10;->val$lhs:[F

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$10;->val$rhs:[F

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 555
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$10;->getLeft()[Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Float;
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$10;->val$lhs:[F

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([F)[Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 555
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$10;->getRight()[Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Float;
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$10;->val$rhs:[F

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([F)[Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
