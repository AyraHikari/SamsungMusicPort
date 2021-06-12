.class public Lcom/mz/common/MZBtnUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroid/os/Handler; = null

.field static b:Ljava/lang/Runnable; = null

.field private static c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mz/common/MZBtnUtils;->a:Landroid/os/Handler;

    .line 13
    new-instance v0, Lcom/mz/common/MZBtnUtils$1;

    invoke-direct {v0}, Lcom/mz/common/MZBtnUtils$1;-><init>()V

    sput-object v0, Lcom/mz/common/MZBtnUtils;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/mz/common/MZBtnUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mz/common/MzLog;->c(Ljava/lang/String;)V

    .line 29
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mz/common/MZBtnUtils;->b()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 37
    sput-boolean p0, Lcom/mz/common/MZBtnUtils;->c:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/mz/common/MZBtnUtils;->c:Z

    return v0
.end method

.method public static b()V
    .locals 4

    .line 41
    invoke-static {}, Lcom/mz/common/MZBtnUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Lcom/mz/common/MZBtnUtils;->a(Z)V

    .line 43
    sget-object v0, Lcom/mz/common/MZBtnUtils;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mz/common/MZBtnUtils;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
