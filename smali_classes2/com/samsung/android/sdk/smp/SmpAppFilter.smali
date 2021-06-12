.class public Lcom/samsung/android/sdk/smp/SmpAppFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    .line 34
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->b(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
