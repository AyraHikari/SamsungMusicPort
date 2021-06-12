.class Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;Landroid/content/Context;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$2;->b:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/init/StartClientPermissions;->b(Landroid/content/Context;)V

    return-void
.end method
