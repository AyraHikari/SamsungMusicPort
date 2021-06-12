.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;

    return-object p1
.end method
