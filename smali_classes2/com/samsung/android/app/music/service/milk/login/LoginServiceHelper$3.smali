.class Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(IIILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:[Ljava/lang/Object;

.field final synthetic g:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;Ljava/util/ArrayList;IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->g:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->b:I

    iput p4, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->c:I

    iput p5, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->d:I

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->e:Ljava/lang/Object;

    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->f:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .line 215
    iget v4, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->b:I

    iget v5, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->c:I

    iget v6, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->d:I

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->e:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$3;->f:[Ljava/lang/Object;

    .line 216
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
