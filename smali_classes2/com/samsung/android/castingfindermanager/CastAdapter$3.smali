.class Lcom/samsung/android/castingfindermanager/CastAdapter$3;
.super Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/CastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/castingfindermanager/CastAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/CastAdapter;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignInFailed(I)V
    .locals 3

    const-string v0, "CastAdapter"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignInFailed reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    :cond_0
    return-void
.end method

.method public onSignedIn()V
    .locals 2

    const-string v0, "CastAdapter"

    const-string v1, "onSignedIn"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->e(Lcom/samsung/android/castingfindermanager/CastAdapter;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    :cond_0
    return-void
.end method

.method public onSignedOut()V
    .locals 2

    const-string v0, "CastAdapter"

    const-string v1, "onSignedOut"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    :cond_0
    return-void
.end method
