.class Lorg/apache/commons/lang3/builder/DiffBuilder$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[Z

.field final synthetic val$rhs:[Z


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[Z[Z)V
    .locals 0

    .line 220
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$lhs:[Z

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$rhs:[Z

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->getLeft()[Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Boolean;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$lhs:[Z

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([Z)[Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->getRight()[Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Boolean;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$2;->val$rhs:[Z

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([Z)[Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
