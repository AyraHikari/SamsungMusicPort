.class Lorg/apache/commons/lang3/builder/DiffBuilder$14;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[J

.field final synthetic val$rhs:[J


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[J[J)V
    .locals 0

    .line 723
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$lhs:[J

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$rhs:[J

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->getLeft()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Long;
    .locals 1

    .line 728
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$lhs:[J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->getRight()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Long;
    .locals 1

    .line 733
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$rhs:[J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->a([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
