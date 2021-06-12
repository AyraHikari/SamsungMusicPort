.class public Lcom/mz/common/MzLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 1

    .line 21
    sget-boolean v0, Lcom/mz/common/MzLog;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MZ"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/mz/common/MzLog;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MZ"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-boolean v0, Lcom/mz/common/MzLog;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MZ"

    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-boolean v0, Lcom/mz/common/MzLog;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MZ"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/mz/common/MzLog;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "MZ"

    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
