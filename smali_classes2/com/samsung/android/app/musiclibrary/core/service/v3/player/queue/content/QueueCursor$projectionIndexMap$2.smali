.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$projectionIndexMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$projectionIndexMap$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$projectionIndexMap$2;->invoke()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor$projectionIndexMap$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->access$getProjection$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;)[Ljava/lang/String;

    move-result-object v1

    .line 224
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 41
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, " AS "

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v13, 0x1

    invoke-static {v7, v8, v13}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, " "

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 42
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v7

    add-int/2addr v7, v13

    if-eqz v5, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    return-object v0
.end method
