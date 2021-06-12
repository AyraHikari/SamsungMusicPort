.class public final Lkotlinx/coroutines/JobSupportKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/Symbol;

.field private static final b:Lkotlinx/coroutines/Empty;

.field private static final c:Lkotlinx/coroutines/Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1174
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/JobSupportKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 1176
    new-instance v0, Lkotlinx/coroutines/Empty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/Empty;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/JobSupportKt;->b:Lkotlinx/coroutines/Empty;

    .line 1178
    new-instance v0, Lkotlinx/coroutines/Empty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/Empty;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/JobSupportKt;->c:Lkotlinx/coroutines/Empty;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1160
    instance-of v0, p0, Lkotlinx/coroutines/IncompleteStateBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/IncompleteStateBox;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/IncompleteStateBox;->a:Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/JobSupportKt;->a:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/JobSupportKt;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/Empty;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/JobSupportKt;->c:Lkotlinx/coroutines/Empty;

    return-object v0
.end method

.method private static final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1159
    instance-of v0, p0, Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/IncompleteStateBox;

    check-cast p0, Lkotlinx/coroutines/Incomplete;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/IncompleteStateBox;-><init>(Lkotlinx/coroutines/Incomplete;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/Empty;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/JobSupportKt;->b:Lkotlinx/coroutines/Empty;

    return-object v0
.end method
