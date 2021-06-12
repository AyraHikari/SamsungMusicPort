.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$4;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$4;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    .line 279
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->b(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$4;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    new-instance v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)V

    return-void

    .line 281
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finish to load Local Play History but it\'s empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
