.class public Lcom/samsung/android/sdk/ppmt/Ppmt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_3

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid push type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "push token is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid push type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void

    .line 248
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "intent is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    .line 274
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid push type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->b(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 164
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
