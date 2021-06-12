.class public final Lkotlinx/coroutines/NodeList;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1207
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    return-void
.end method


# virtual methods
.method public G_()Lkotlinx/coroutines/NodeList;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List{"

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}["

    .line 1214
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->f()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 1343
    :goto_0
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 1344
    instance-of v3, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/JobNode;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 1217
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1345
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "]"

    .line 1220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 1342
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    .line 1223
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/NodeList;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
