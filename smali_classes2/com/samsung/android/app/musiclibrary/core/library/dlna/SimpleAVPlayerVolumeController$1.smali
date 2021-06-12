.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSECAVPlayerVolumeResponseListener - onGetMuteResponseReceived mute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "SV-Dlna"

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSECAVPlayerVolumeResponseListener - onGetMuteResponseReceived mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 151
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;->onUpdateMute(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-SV-Dlna"

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSECAVPlayerVolumeResponseListener - onGetMuteResponseReceived error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p2}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onGetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSECAVPlayerVolumeResponseListener - onGetVolumeResponseReceived level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p2}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V
    .locals 2

    .line 167
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "SV-Dlna"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSECAVPlayerVolumeResponseListener - onSetMuteResponseReceived mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 172
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;->onUpdateMute(Z)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;Z)Z

    goto :goto_0

    :cond_1
    const-string p1, "SMUSIC-SV-Dlna"

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSECAVPlayerVolumeResponseListener - onSetMuteResponseReceived error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p2}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V
    .locals 2

    .line 118
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "SV-Dlna"

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSECAVPlayerVolumeResponseListener - onSetVolumeResponseReceived level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;->onSetVolume(I)V

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-SV-Dlna"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSECAVPlayerVolumeResponseListener - onSetVolumeResponseReceived error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p2}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
