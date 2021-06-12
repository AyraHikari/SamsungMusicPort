.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 49
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    .line 209
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerServiceFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindingDied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$setStartToBind$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Z)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 4

    .line 54
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    .line 224
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerServiceFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNullBinding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$setStartToBind$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Z)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerServiceFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    .line 194
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerServiceFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->access$setStartToBind$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Z)V

    return-void
.end method
