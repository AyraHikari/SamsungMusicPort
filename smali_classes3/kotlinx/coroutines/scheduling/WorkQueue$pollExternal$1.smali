.class public final Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/WorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/coroutines/scheduling/Task;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;->INSTANCE:Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;->invoke(Lkotlinx/coroutines/scheduling/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/scheduling/Task;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
