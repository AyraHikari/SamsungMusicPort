.class public final Lkotlin/io/LinesSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/LinesSequence;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/io/LinesSequence;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Lkotlin/io/LinesSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lkotlin/io/LinesSequence$iterator$1;->a:Lkotlin/io/LinesSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lkotlin/io/LinesSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lkotlin/io/LinesSequence$iterator$1;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 91
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lkotlin/io/LinesSequence$iterator$1;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0

    .line 88
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lkotlin/io/LinesSequence$iterator$1;->b:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lkotlin/io/LinesSequence$iterator$1;->c:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lkotlin/io/LinesSequence$iterator$1;->a:Lkotlin/io/LinesSequence;

    invoke-static {v0}, Lkotlin/io/LinesSequence;->a(Lkotlin/io/LinesSequence;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlin/io/LinesSequence$iterator$1;->b:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lkotlin/io/LinesSequence$iterator$1;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lkotlin/io/LinesSequence$iterator$1;->c:Z

    .line 83
    :cond_0
    iget-object v0, p0, Lkotlin/io/LinesSequence$iterator$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lkotlin/io/LinesSequence$iterator$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
