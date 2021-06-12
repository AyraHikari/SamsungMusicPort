.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MusicRemoteController"
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.sec.android.app.musiccontroller.MUSICCONTROLLERMAINSERVICE"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.musiccontroller"

.field private static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.musiccontroller.MusicControllerMainService"


# instance fields
.field private mIsBound:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$1;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;Z)Z
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->mIsBound:Z

    return p1
.end method


# virtual methods
.method bindService(Landroid/content/Context;)V
    .locals 3

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musiccontroller.MUSICCONTROLLERMAINSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.musiccontroller"

    const-string v2, "com.sec.android.app.musiccontroller.MusicControllerMainService"

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->mIsBound:Z

    const-string p1, "SV-MediaCenter"

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService() returned : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->mIsBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method unbindService(Landroid/content/Context;)V
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
