.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinder"
.end annotation


# instance fields
.field final mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 207
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    const-string v0, "SMUSIC-SV"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceUtils- onServiceConnected sService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$100()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "SMUSIC-SV"

    const-string v1, "ServiceUtils- onServiceDisconnected"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    const/4 p1, 0x0

    .line 221
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-void
.end method
