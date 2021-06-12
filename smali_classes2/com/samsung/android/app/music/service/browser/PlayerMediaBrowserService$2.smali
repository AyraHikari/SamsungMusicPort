.class Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$2;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$2;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/ResultReceiver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "SV-MediaBrowser"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.smartthings.action.CONTENT_CONTINUITY_GET_CURRENT_USER_ACTIVITY"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.smartthings.action.CONTENT_CONTINUITY_TRANSFER_USER_ACTIVITY"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_COMMAND"

    .line 94
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_ARGS"

    .line 95
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "KEY_RECEIVER"

    .line 96
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$2;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SV-MediaBrowser"

    const-string p2, "onCommand: service is not connected."

    .line 98
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$2;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->b(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$2;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method
