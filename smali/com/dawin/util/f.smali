.class public final Lcom/dawin/util/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/f$a;
    }
.end annotation


# direct methods
.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "Object can not be null."

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v1, v0, v2}, Lcom/dawin/util/f;->b(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dawin/util/f;->b(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static varargs b(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p2, p3}, Lcom/dawin/util/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
