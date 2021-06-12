.class public Lcom/dawin/util/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/a$b;,
        Lcom/dawin/util/a$c;,
        Lcom/dawin/util/a$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/dawin/util/g$a;

    const-string v1, "getId"

    invoke-direct {v0, p0, v1}, Lcom/dawin/util/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dawin/util/g$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/dawin/util/a$c;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/dawin/util/a$b;

    invoke-direct {v0, p0, p1}, Lcom/dawin/util/a$b;-><init>(Landroid/content/Context;Lcom/dawin/util/a$c;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/dawin/util/a$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/dawin/util/a$c;->a(Lcom/dawin/util/a$a;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/Object;Z)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/dawin/util/g$a;

    const-string v1, "isLimitAdTrackingEnabled"

    invoke-direct {v0, p0, v1}, Lcom/dawin/util/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dawin/util/g$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0

    :catch_0
    return p1
.end method
