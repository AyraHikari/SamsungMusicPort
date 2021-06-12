.class Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 108
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateCheckResultListener resultCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", deployedVersionCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;

    const-string p2, "Music_0_0"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;

    const-string p2, "Music_0_2"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
