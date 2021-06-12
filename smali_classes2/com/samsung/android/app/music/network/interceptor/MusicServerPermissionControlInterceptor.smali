.class public Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;->a:Landroid/content/Context;

    .line 45
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MusicServerPermissionControlInterceptor"

    const-string v1, "intercept. permission not granted yet."

    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;->b:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;->a(Landroid/content/Context;)V

    const-string v0, "MusicServerPermissionControlInterceptor"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intercept. maybe permission state was changed. has permission - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor;->a:Landroid/content/Context;

    .line 50
    invoke-static {v2}, Lcom/samsung/android/app/music/network/init/StartClientPermissions;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
