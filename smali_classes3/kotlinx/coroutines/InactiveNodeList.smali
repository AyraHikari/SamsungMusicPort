.class public final Lkotlinx/coroutines/InactiveNodeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# instance fields
.field private final a:Lkotlinx/coroutines/NodeList;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/NodeList;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/InactiveNodeList;->a:Lkotlinx/coroutines/NodeList;

    return-void
.end method


# virtual methods
.method public G_()Lkotlinx/coroutines/NodeList;
    .locals 1

    .line 1227
    iget-object v0, p0, Lkotlinx/coroutines/InactiveNodeList;->a:Lkotlinx/coroutines/NodeList;

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1230
    invoke-virtual {p0}, Lkotlinx/coroutines/InactiveNodeList;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    const-string v1, "New"

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/NodeList;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
