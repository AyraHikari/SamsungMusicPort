.class public final Lkotlin/jvm/internal/LocalVariableReferencesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a()Ljava/lang/Void;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/jvm/internal/LocalVariableReferencesKt;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Ljava/lang/Void;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported for local property reference."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
