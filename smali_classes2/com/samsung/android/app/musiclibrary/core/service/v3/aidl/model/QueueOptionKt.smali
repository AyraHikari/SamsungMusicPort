.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOptionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$toLog([I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOptionKt;->toLog([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final toLog([I)Ljava/lang/String;
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "b.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
