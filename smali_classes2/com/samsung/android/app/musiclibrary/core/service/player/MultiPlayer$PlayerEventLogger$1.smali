.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger$1;
.super Landroid/util/Pair;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;->saveStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger;

    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/util/Pair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 1421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1422
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$PlayerEventLogger$1;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 1423
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1424
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1427
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
