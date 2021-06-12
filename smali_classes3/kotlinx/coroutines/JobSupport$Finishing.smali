.class final Lkotlinx/coroutines/JobSupport$Finishing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Finishing"
.end annotation


# instance fields
.field public volatile a:Z

.field public volatile b:Ljava/lang/Throwable;

.field private volatile c:Ljava/lang/Object;

.field private final d:Lkotlinx/coroutines/NodeList;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->d:Lkotlinx/coroutines/NodeList;

    iput-boolean p2, p0, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    return-void
.end method

.method private final e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public G_()Lkotlinx/coroutines/NodeList;
    .locals 1

    .line 958
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->d:Lkotlinx/coroutines/NodeList;

    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 977
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->e()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 978
    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    .line 979
    :cond_1
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    check-cast v0, Ljava/util/ArrayList;

    .line 982
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 983
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 984
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->a()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->c:Ljava/lang/Object;

    .line 986
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 979
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<kotlin.Throwable> /* = java.util.ArrayList<kotlin.Throwable> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 980
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 993
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    .line 997
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 999
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->c:Ljava/lang/Object;

    goto :goto_0

    .line 1000
    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_3

    return-void

    .line 1002
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->e()Ljava/util/ArrayList;

    move-result-object v1

    .line 1003
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    iput-object v1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->c:Ljava/lang/Object;

    goto :goto_0

    .line 1008
    :cond_4
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<kotlin.Throwable> /* = java.util.ArrayList<kotlin.Throwable> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1009
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public b()Z
    .locals 1

    .line 970
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 968
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->a()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 969
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
