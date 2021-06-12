.class Lorg/apache/commons/lang3/builder/DiffBuilder$4;
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
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[B

.field final synthetic val$rhs:[B


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[B[B)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$lhs:[B

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$rhs:[B

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->getLeft()[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Byte;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$lhs:[B

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([B)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->getRight()[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Byte;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$4;->val$rhs:[B

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([B)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
